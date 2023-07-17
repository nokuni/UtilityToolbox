//
//  AsyncManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 15/05/2023.
//

import Foundation

public final class AsyncManager {
    
    /// Load an asynchronous content synchronously.
    public static func loadContent(content: @escaping () async throws -> Void,
                                   completion: (() -> Void)? = nil) {
        Task {
            try await content()
            completion?()
        }
    }
}
