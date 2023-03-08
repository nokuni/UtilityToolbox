//
//  Bundle.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

public extension Bundle {
    
    private enum BundleError: String, Error {
        case wrongURL = "The file name does not exists."
        case noData = "The data from the file does not exists."
        case wrongData = "Something wrong happened during decoding the data. Check the JSON file or the data model."
    }
    
    /// Decode a JSON and returns the data.
    func decodeJSON<T: Codable>(_ resource: String) throws -> T {
        guard let url = Bundle.main.url(forResource: resource, withExtension: nil) else {
            throw BundleError.wrongURL.rawValue
        }
        guard let data = try? Data(contentsOf: url) else {
            throw BundleError.noData.rawValue
        }
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
            throw BundleError.wrongData.rawValue
        }
        return decodedData
    }
}
