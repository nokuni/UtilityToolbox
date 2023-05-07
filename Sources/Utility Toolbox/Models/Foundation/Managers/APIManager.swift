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
    
    private func encode<T>(_ value: T) throws -> [String: Any] where T : Encodable {
        let encoder = JSONEncoder()
        let data = try encoder.encode(value)
        return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
    }
    
    /// Returns the data from the GET request.
    public func getRequest<M: Codable>(url: String,
                                       cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                       dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                       dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
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
            return result
        } catch let error {
            print(String(describing: error))
            throw APIError.noData.rawValue
        }
    }
    
    /// Returns the data from the POST request.
    public func postRequest<M: Codable>(url: String,
                                        value: M,
                                        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                        dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                        dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        guard let url = URL(string: url) else {
            throw APIError.badURL.rawValue
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.post.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let object = try encode(value)
        
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: object)
        
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = keyDecodingStrategy
            decoder.dateDecodingStrategy = dateDecodingStrategy
            decoder.dataDecodingStrategy = dataDecodingStrategy
            
            let result = try decoder.decode(M.self, from: data)
            return result
        } catch let error {
            print(String(describing: error))
            throw error
        }
    }
    
    /// Returns the data from the PUT request.
    public func putRequest<M: Codable>(url: String,
                                       value: M,
                                       cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                       dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                       dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        guard let url = URL(string: url) else {
            throw APIError.badURL.rawValue
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.put.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let object = try encode(value)
        
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: object)
        
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = keyDecodingStrategy
            decoder.dateDecodingStrategy = dateDecodingStrategy
            decoder.dataDecodingStrategy = dataDecodingStrategy
            
            let result = try decoder.decode(M.self, from: data)
            return result
        } catch let error {
            print(String(describing: error))
            throw error.localizedDescription
        }
    }
    
    /// Delete the data from the DELETE request.
    public func deleteRequest<M: Codable>(url: String,
                                          cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                          dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                          dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                          keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        guard let url = URL(string: url) else {
            throw APIError.badURL.rawValue
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = HTTPMethod.delete.rawValue
        
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
            return result
        } catch let error {
            print(String(describing: error))
            throw APIError.noData.rawValue
        }
    }
    
    public func get<M: Codable>(url: String,
                                successCompletion: (() -> Void)? = nil,
                                failureCompletion: (() -> Void)? = nil) async throws -> M {
        do {
            let data: M = try await getRequest(url: url)
            successCompletion?()
            return data
        } catch let error {
            failureCompletion?()
            throw error.localizedDescription
        }
    }
    
    public func get<M: Codable>(url: String,
                                id: Int,
                                successCompletion: (() -> Void)? = nil,
                                failureCompletion: (() -> Void)? = nil) async throws -> M {
        do {
            let data: M = try await getRequest(url: url + "\(id)")
            successCompletion?()
            return data
        } catch let error {
            failureCompletion?()
            throw error.localizedDescription
        }
    }
    
    public func post<M: Codable>(url: String,
                                 value: M,
                                 successCompletion: (() -> Void)? = nil,
                                 failureCompletion: (() -> Void)? = nil) async throws -> M {
        do {
            let data: M = try await postRequest(url: url, value: value)
            successCompletion?()
            return data
        } catch let error {
            failureCompletion?()
            throw error.localizedDescription
        }
    }
    
    public func put<M: Codable>(url: String,
                                value: M,
                                successCompletion: (() -> Void)? = nil,
                                failureCompletion: (() -> Void)? = nil) async throws -> M {
        do {
            let data: M = try await putRequest(url: url, value: value)
            successCompletion?()
            return data
        } catch let error {
            failureCompletion?()
            throw error.localizedDescription
        }
    }
    
    public func put<M: Codable>(url: String,
                                id: Int,
                                value: M,
                                successCompletion: (() -> Void)? = nil,
                                failureCompletion: (() -> Void)? = nil) async throws -> M {
        do {
            let data: M = try await putRequest(url: url + "\(id)", value: value)
            successCompletion?()
            return data
        } catch let error {
            failureCompletion?()
            throw error.localizedDescription
        }
    }
    
    public func delete<M: Codable>(url: String,
                                   id: Int,
                                   successCompletion: (() -> Void)? = nil,
                                   failureCompletion: (() -> Void)? = nil) async throws -> M {
        do {
            let data: M = try await deleteRequest(url: url + "\(id)")
            successCompletion?()
            return data
        } catch let error {
            failureCompletion?()
            throw error.localizedDescription
        }
    }
}
