//
//  BundleManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 22/05/2023.
//

import Foundation

public final class BundleManager {

    public init() { }

    private enum BundleError: String, Error {
        case wrongURL = "The file name does not exists."
        case noData = "The data from the file does not exists."
        case wrongData = "Something wrong happened during decoding the data. Check the JSON file or the data model."
    }

    /// Decode a JSON and returns the data.
    public func decodeJSON<T: Codable>(_ fileName: String, fileExtension: String? = nil) throws -> T {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else {
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
