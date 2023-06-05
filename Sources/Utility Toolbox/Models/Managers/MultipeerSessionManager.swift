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
// Item1: _my-service._udp
// PS: The 2 properties need to have the ._tcp and ._udp in the info file. But in the code you can ignore the underscores and the extension and use it as "my-service".

// In your app target, add mac as a supported destination. It will automatically unlock App Sandbox in Signing and Capabilities. You will need to enable Incoming Connections (server) and Outgoing Connections (client).

public class MultipeerSessionManager: NSObject, ObservableObject {
    private var serviceType: String
    private var myPeerID: MCPeerID
    
    public let serviceAdvertiser: MCNearbyServiceAdvertiser
    public let serviceBrowser: MCNearbyServiceBrowser
    public let session: MCSession
    
    @Published public var availablePeers: [MCPeerID] = []
    @Published public var receivedData: Data = Data()
    @Published public var hasReceivedInvite: Bool = false
    @Published public var receivedInviteFrom: MCPeerID? = nil
    @Published public var paired: Bool = false
    @Published public var invitationHandler: ((Bool, MCSession?) -> Void)?

    private let log = Logger()

    public init(serviceType: String, username: String) {
        self.serviceType = serviceType
        
        let peerID = MCPeerID(displayName: username)
        self.myPeerID = peerID

        self.session = MCSession(peer: peerID, securityIdentity: nil, encryptionPreference: .none)
        self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: peerID, discoveryInfo: nil, serviceType: serviceType)
        self.serviceBrowser = MCNearbyServiceBrowser(peer: peerID, serviceType: serviceType)

        super.init()

        session.delegate = self
        serviceAdvertiser.delegate = self
        serviceBrowser.delegate = self

        serviceAdvertiser.startAdvertisingPeer()
        serviceBrowser.startBrowsingForPeers()
    }

    deinit {
        serviceAdvertiser.stopAdvertisingPeer()
        serviceBrowser.stopBrowsingForPeers()
    }

    public func send(data: Data) {
        if !session.connectedPeers.isEmpty {
            log.info("sendMove: \(String(describing: data)) to \(self.session.connectedPeers[0].displayName)")
            do {
                try session.send(data, toPeers: session.connectedPeers, with: .reliable)
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
            self.hasReceivedInvite = true
            // Give PairView the peerID of the peer who invited us
            self.receivedInviteFrom = peerID
            // Give PairView the `invitationHandler` so it can accept/deny the invitation
            self.invitationHandler = invitationHandler
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
            self.availablePeers.append(peerID)
        }
    }

    public func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
        log.info("ServiceBrowser lost peer: \(peerID)")
        // Remove lost peer from list of available peers
        DispatchQueue.main.async {
            self.availablePeers.removeAll(where: {
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
                self.paired = false
            }
            // Peer disconnected, start accepting invitaions again
            serviceAdvertiser.startAdvertisingPeer()
            break
        case MCSessionState.connected:
            // Peer connected
            DispatchQueue.main.async {
                self.paired = true
            }
            // We are paired, stop accepting invitations
            serviceAdvertiser.stopAdvertisingPeer()
            break
        default:
            // Peer connecting or something else
            DispatchQueue.main.async {
                self.paired = false
            }
            break
        }
    }

    public func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        log.info("didReceive \(data)")
        DispatchQueue.main.async {
            self.receivedData = data
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
