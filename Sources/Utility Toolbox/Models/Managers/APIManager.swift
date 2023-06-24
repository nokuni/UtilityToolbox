//
//  APIManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 13/03/2023.
//

import Foundation

public final class APIManager {
    
    public init() { }
    
    /// All HTTP methods to initiate a request.
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
    
    /// Returns the data from the GET request.
    public func getRequest<M: Codable>(url: String,
                                       cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                       dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                       dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        guard let url = URL(string: url) else { throw APIError.badURL.rawValue }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw APIError.badResponse.rawValue }
        
        return try decoder.decode(M.self, from: data)
    }
    
    /// Returns the data from the POST request.
    public func postRequest<M: Codable>(url: String,
                                        value: M,
                                        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                        dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                        dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        guard let url = URL(string: url) else { throw APIError.badURL.rawValue }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.post.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        
        let object = try encode(value)
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: object)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        return try decoder.decode(M.self, from: data)
    }
    
    /// Returns the data from the PUT request.
    public func putRequest<M: Codable>(url: String,
                                       value: M,
                                       cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                       dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                       dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        guard let url = URL(string: url) else { throw APIError.badURL.rawValue }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.put.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        
        let object = try encode(value)
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: object)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        return try decoder.decode(M.self, from: data)
    }
    
    /// Delete the data from the DELETE request.
    public func deleteRequest<M: Codable>(url: String,
                                          cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                          dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                          dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                          keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        guard let url = URL(string: url) else { throw APIError.badURL.rawValue }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.delete.rawValue
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw APIError.badResponse.rawValue }
        
        return try decoder.decode(M.self, from: data)
    }
    
    /// Simple formatted method to GET data.
    public func get<M: Codable>(url: String) async throws -> M {
        try await getRequest(url: url)
    }
    
    /// Simple formatted method to GET data with an ID.
    public func get<M: Codable>(url: String, id: Int) async throws -> M {
        try await getRequest(url: url + "\(id)")
    }
    
    /// Simple formatted method to POST data.
    public func post<M: Codable>(url: String, value: M) async throws -> M {
        try await postRequest(url: url, value: value)
    }
    
    /// Simple formatted method to PUT data.
    public func put<M: Codable>(url: String, value: M) async throws -> M {
        try await putRequest(url: url, value: value)
    }
    
    /// Simple formatted method to PUT data with an ID.
    public func put<M: Codable>(url: String, id: Int, value: M) async throws -> M {
        try await putRequest(url: url + "\(id)", value: value)
    }
    
    /// Simple formatted method to DELETE data with an ID.
    public func delete<M: Codable>(url: String, id: Int) async throws -> M {
        try await deleteRequest(url: url + "\(id)")
    }
}
