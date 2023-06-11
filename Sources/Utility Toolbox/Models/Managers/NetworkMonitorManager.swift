//
//  NetworkMonitorManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/06/23.
//

import Network
import SwiftUI

class NetworkMonitorManager: ObservableObject {
    private let networkMonitor = NWPathMonitor()
    private let workerQueue = DispatchQueue(label: "Monitor")
    var isConnected = false

    init() {
        networkMonitor.pathUpdateHandler = { path in
            self.isConnected = path.status == .satisfied
            Task {
                await MainActor.run {
                    self.objectWillChange.send()
                }
            }
        }
        networkMonitor.start(queue: workerQueue)
    }
}
