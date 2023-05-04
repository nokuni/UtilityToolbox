//
//  MultipeerSessionManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 04/05/2023.
//

import MultipeerConnectivity
import os

// MARK: - App configuration before use

// In the app Info properties, add Bonjour Services.
// Then add 2 properties representing the service type.
// Item0: _my-service._tcp
// Item0: _my-service._udp
// PS: The 2 properties need to have the ._tcp and ._udp in the info file. But in the code you can ignore the underscores and the extension and use it as "my-service".

// In your app target, add mac as a supported destination. It will automatically unlock App Sandbox in Signing and Capabilities. You will need to enable Incoming Connections (server) and Outgoing Connections (client).

public class MultipeerSessionManager: NSObject, ObservableObject {
    private var myPeerID: MCPeerID

    public var configuration: ServiceConfiguration

    private let log = Logger()

    public struct ServiceConfiguration {
        public init(serviceAdvertiser: MCNearbyServiceAdvertiser,
                    serviceBrowser: MCNearbyServiceBrowser,
                    session: MCSession,
                    serviceType: String,
                    data: Data,
                    receivedData: Data = Data(),
                    availablePeers: [MCPeerID] = [],
                    hasReceivedInvite: Bool = false,
                    receivedInviteFrom: MCPeerID? = nil,
                    paired: Bool = false,
                    invitationHandler: ((Bool, MCSession?) -> Void)? = nil) {
            self.serviceAdvertiser = serviceAdvertiser
            self.serviceBrowser = serviceBrowser
            self.session = session
            self.serviceType = serviceType
            self.data = data
            self.receivedData = receivedData
            self.availablePeers = availablePeers
            self.hasReceivedInvite = hasReceivedInvite
            self.receivedInviteFrom = receivedInviteFrom
            self.paired = paired
            self.invitationHandler = invitationHandler
        }

        public var serviceAdvertiser: MCNearbyServiceAdvertiser
        public var serviceBrowser: MCNearbyServiceBrowser
        public var session: MCSession
        public let serviceType: String
        public var data: Data
        public var receivedData: Data
        public var availablePeers: [MCPeerID]
        public var hasReceivedInvite: Bool
        public var receivedInviteFrom: MCPeerID?
        public var paired: Bool
        public var invitationHandler: ((Bool, MCSession?) -> Void)?
    }

    public init(configuration: ServiceConfiguration, username: String) {
        self.configuration = configuration

        let peerID = MCPeerID(displayName: username)
        self.myPeerID = peerID

        self.configuration.session = MCSession(peer: peerID, securityIdentity: nil, encryptionPreference: .none)
        self.configuration.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: peerID, discoveryInfo: nil, serviceType: configuration.serviceType)
        self.configuration.serviceBrowser = MCNearbyServiceBrowser(peer: peerID, serviceType: configuration.serviceType)

        super.init()

        configuration.session.delegate = self
        configuration.serviceAdvertiser.delegate = self
        configuration.serviceBrowser.delegate = self

        configuration.serviceAdvertiser.startAdvertisingPeer()
        configuration.serviceBrowser.startBrowsingForPeers()
    }

    deinit {
        configuration.serviceAdvertiser.stopAdvertisingPeer()
        configuration.serviceBrowser.stopBrowsingForPeers()
    }

    public func send() {
        if !configuration.session.connectedPeers.isEmpty {
            log.info("sendMove: \(String(describing: self.configuration.data)) to \(self.configuration.session.connectedPeers[0].displayName)")
            do {
                try configuration.session.send(configuration.data, toPeers: configuration.session.connectedPeers, with: .reliable)
            } catch {
                log.error("Error sending: \(String(describing: error))")
            }
        }
    }
}

extension MultipeerSessionManager: MCNearbyServiceAdvertiserDelegate {
    public func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error) {
        //TODO: Inform the user something went wrong and try again
        log.error("ServiceAdvertiser didNotStartAdvertisingPeer: \(String(describing: error))")
    }

    public func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        log.info("didReceiveInvitationFromPeer \(peerID)")

        DispatchQueue.main.async {
            // Tell PairView to show the invitation alert
            self.configuration.hasReceivedInvite = true
            // Give PairView the peerID of the peer who invited us
            self.configuration.receivedInviteFrom = peerID
            // Give PairView the `invitationHandler` so it can accept/deny the invitation
            self.configuration.invitationHandler = invitationHandler
        }
    }
}

extension MultipeerSessionManager: MCNearbyServiceBrowserDelegate {
    public func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error) {
        //TODO: Tell the user something went wrong and try again
        log.error("ServiceBroser didNotStartBrowsingForPeers: \(String(describing: error))")
    }

    public func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {
        log.info("ServiceBrowser found peer: \(peerID)")
        // Add the peer to the list of available peers
        DispatchQueue.main.async {
            self.configuration.availablePeers.append(peerID)
        }
    }

    public func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
        log.info("ServiceBrowser lost peer: \(peerID)")
        // Remove lost peer from list of available peers
        DispatchQueue.main.async {
            self.configuration.availablePeers.removeAll(where: {
                $0 == peerID
            })
        }
    }
}

extension MultipeerSessionManager: MCSessionDelegate {
    public func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        log.info("peer \(peerID) didChangeState: \(state.rawValue)")

        switch state {
        case MCSessionState.notConnected:
            // Peer disconnected
            DispatchQueue.main.async {
                self.configuration.paired = false
            }
            // Peer disconnected, start accepting invitaions again
            configuration.serviceAdvertiser.startAdvertisingPeer()
            break
        case MCSessionState.connected:
            // Peer connected
            DispatchQueue.main.async {
                self.configuration.paired = true
            }
            // We are paired, stop accepting invitations
            configuration.serviceAdvertiser.stopAdvertisingPeer()
            break
        default:
            // Peer connecting or something else
            DispatchQueue.main.async {
                self.configuration.paired = false
            }
            break
        }
    }

    public func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        log.info("didReceive \(data)")
        DispatchQueue.main.async {
            self.configuration.receivedData = data
        }
    }

    public func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        log.error("Receiving streams is not supported")
    }

    public func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        log.error("Receiving resources is not supported")
    }

    public func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        log.error("Receiving resources is not supported")
    }

    public func session(_ session: MCSession, didReceiveCertificate certificate: [Any]?, fromPeer peerID: MCPeerID, certificateHandler: @escaping (Bool) -> Void) {
        certificateHandler(true)
    }
}
