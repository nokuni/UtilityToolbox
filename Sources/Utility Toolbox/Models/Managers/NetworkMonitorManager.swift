//
//  NetworkMonitorManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/06/23.
//

import Network
import SwiftUI

/// Manage and monitor your network
public class NetworkMonitorManager: ObservableObject {
    private let networkMonitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "Monitor")
    @Published public var isConnected = false
    
    private func checkConnection() {
        networkMonitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                self.isConnected = path.status == .satisfied
            }
        }
        networkMonitor.start(queue: queue)
    }
    
    public init() {
        checkConnection()
    }
}
