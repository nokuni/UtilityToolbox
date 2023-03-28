//
//  APIManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 13/03/2023.
//

import Foundation

public final class APIManager {
    
    public init() { }
    
    public enum HTTPMethod: String {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case delete = "DELETE"
    }
    
    private enum APIError: String {
        case badURL = "The URL for the request is wrong"
        case badResponse = "Server ERROR"
        case noData = "No DATA"
    }
    
    public func getRequest<M: Codable>(url: String,
                                       cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                       dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                       dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
                                       model: M.Type) async throws -> M {
        
        guard let url = URL(string: url) else {
            throw APIError.badURL.rawValue
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                throw APIError.badResponse.rawValue
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = keyDecodingStrategy
            decoder.dateDecodingStrategy = dateDecodingStrategy
            decoder.dataDecodingStrategy = dataDecodingStrategy
            
            let result = try decoder.decode(M.self, from: data)
            print("Success")
            return result
        } catch {
            throw APIError.noData.rawValue
        }
    }
    
    public func postRequest<M: Codable>(url: String,
                                        cachePolicy: URLRequest.CachePolicy,
                                        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
                                        model: M.Type,
                                        body: [String: Any]) async throws -> M {
        
        guard let url = URL(string: url) else {
            throw APIError.badURL.rawValue
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.post.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let result = try decoder.decode(M.self, from: data)
        return result
    }
    
    public func putRequest<M: Codable>(url: String,
                                       cachePolicy: URLRequest.CachePolicy,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
                                       model: M.Type,
                                       body: [String: Any]) async throws -> M {
        guard let url = URL(string: url) else {
            throw APIError.badURL.rawValue
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.put.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let result = try decoder.decode(M.self, from: data)
        return result
    }
}
