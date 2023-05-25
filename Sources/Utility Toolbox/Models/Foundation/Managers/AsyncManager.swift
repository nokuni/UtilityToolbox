//
//  AsyncManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 15/05/2023.
//

import Foundation

public class AsyncManager {
    
    /// Load an asynchronous content synchronously.
    public static func loadContent(content: @escaping () async throws -> Void,
                                   completion: (() -> Void)?) {
        Task {
            try await content()
            completion?()
        }
    }
}
