//
//  APIManager.swift
//
//
//  Created by Yann Christophe MAERTENS on 13/03/2023.
//

import Foundation
import SwiftUI

fileprivate typealias Response = (Data, URLResponse)

public final class APIManager {
    
    public init() { }
    
    /// All HTTP methods to initiate a request.
    public enum HTTPMethod: String {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
    }
    
    private enum APIError: String {
        case url = "The URL for the request is wrong"
        case response = "Server ERROR"
        case data = "No DATA"
        case decoding = "Something went wrong on decoding the data"
        case encoding = "Something went wrong on encoding the data"
    }
    
    // MARK: - URL
    
    private func getURL(_ url: String) throws -> URL {
        guard let url = URL(string: url) else { throw APIError.url.rawValue }
        return url
    }
    
    /// Returns an URL with a slash at the end
    private func cleanURL(_ url: String) -> String {
        let hasLastSlash: Bool = url.isLastCharacter("/")
        let slash: String = hasLastSlash ? "/" : ""
        return hasLastSlash ? url : "\(url)\(slash)"
    }
    
    // MARK: - DATA DECODING
    
    private func getDecoder(dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                            dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                            keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) -> JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        return decoder
    }
    
    private func sharedData(request: URLRequest) async throws -> Response {
        try await URLSession.shared.data(for: request)
    }
    
    private func encodedObject<T: Codable>(value: T) throws -> Data {
        do {
            let object = try encode(value)
            return try JSONSerialization.data(withJSONObject: object)
        } catch let error {
            throw "\(APIError.encoding.rawValue): \(error.localizedDescription)"
        }
    }
    
    private func requestedData(request: URLRequest) async throws -> (data: Data, response: URLResponse) {
        do {
            return try await sharedData(request: request)
        } catch let error {
            throw "\(APIError.response.rawValue): \(error.localizedDescription)"
        }
    }
    
    private func decodedData<T: Codable>(request: URLRequest,
                                         decoder: JSONDecoder) async throws -> T {
        do {
            let request = try await requestedData(request: request)
            return try decoder.decode(T.self, from: request.data)
        } catch let error {
            throw "\(APIError.decoding.rawValue): \(error.localizedDescription)"
        }
    }
    
    // MARK: REQUEST
    
    private func urlRequest(url: URL,
                            httpMethod: HTTPMethod,
                            cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy) -> URLRequest {
        var request = URLRequest(url: url, cachePolicy: cachePolicy)
        request.httpMethod = httpMethod.rawValue
        if httpMethod == .post || httpMethod == .put || httpMethod == .patch {
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
        }
        
        return request
    }
    
    /// Returns the data from the HTTP request.
    private func request<T: Codable>(url: String,
                                     value: T? = nil,
                                     httpMethod: HTTPMethod,
                                     key: String? = nil,
                                     htttpHeaderField: String? = nil,
                                     cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                     dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                     dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                     keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        let url: URL = try getURL(url)
        
        var request = urlRequest(url: url,
                                 httpMethod: httpMethod,
                                 cachePolicy: cachePolicy)
        
        if let key, let htttpHeaderField {
            request.addValue(key, forHTTPHeaderField: htttpHeaderField)
        }
        
        if httpMethod == .post || httpMethod == .put || httpMethod == .patch {
            request.httpBody = try encodedObject(value: value)
        }
        
        let decoder = getDecoder(dateDecodingStrategy: dateDecodingStrategy,
                                 dataDecodingStrategy: dataDecodingStrategy,
                                 keyDecodingStrategy: keyDecodingStrategy)
        
        let data: T = try await decodedData(request: request, decoder: decoder)
        
        return data
    }
    
    // MARK: - GET
    
    /// Simple formatted method to GET data.
    public func get<T: Codable>(url: String,
                                key: String? = nil,
                                htttpHeaderField: String? = nil,
                                cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        try await request(url: url,
                          httpMethod: .get,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Simple formatted method to GET data with an ID.
    public func get<T: Codable>(url: String,
                                id: Int,
                                key: String? = nil,
                                htttpHeaderField: String? = nil,
                                cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        try await request(url: "\(cleanURL(url))\(id)",
                          httpMethod: .get,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    // MARK: - POST
    
    /// Simple formatted method to POST data.
    @discardableResult
    public func post<T: Codable>(url: String,
                                 value: T,
                                 key: String? = nil,
                                 htttpHeaderField: String? = nil,
                                 cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                 dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                 dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                 keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        try await request(url: url,
                          value: value,
                          httpMethod: .post,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    // MARK: - PUT
    
    /// Simple formatted method to PUT data.
    @discardableResult
    public func put<T: Codable>(url: String,
                                value: T,
                                key: String? = nil,
                                htttpHeaderField: String? = nil,
                                cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        try await request(url: url,
                          value: value,
                          httpMethod: .put,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Simple formatted method to PUT data with an ID.
    @discardableResult
    public func put<M: Codable>(url: String,
                                id: Int,
                                value: M,
                                key: String? = nil,
                                htttpHeaderField: String? = nil,
                                cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await request(url: "\(cleanURL(url))\(id)",
                          value: value,
                          httpMethod: .put,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    // MARK: - PATCH
    
    /// Simple formatted method to PATCH data.
    @discardableResult
    public func patch<T: Codable>(url: String,
                                  value: T,
                                  key: String? = nil,
                                  htttpHeaderField: String? = nil,
                                  cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                  dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                  dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                  keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        try await request(url: url,
                          value: value,
                          httpMethod: .patch,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Simple formatted method to PATCH data with an ID.
    @discardableResult
    public func patch<M: Codable>(url: String,
                                  id: Int,
                                  value: M,
                                  key: String? = nil,
                                  htttpHeaderField: String? = nil,
                                  cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                  dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                  dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                  keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await request(url: "\(cleanURL(url))\(id)",
                          value: value,
                          httpMethod: .patch,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    // MARK: - DELETE
    
    /// Simple formatted method to DELETE data.
    @discardableResult
    public func delete<M: Codable>(url: String,
                                   key: String? = nil,
                                   htttpHeaderField: String? = nil,
                                   cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                   dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                   dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                   keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await request(url: url,
                          httpMethod: .delete,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Simple formatted method to DELETE data with an ID.
    @discardableResult
    public func delete<M: Codable>(url: String,
                                   id: Int,
                                   key: String? = nil,
                                   htttpHeaderField: String? = nil,
                                   cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                   dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                   dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                   keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await request(url: "\(cleanURL(url))\(id)",
                          httpMethod: .delete,
                          key: key,
                          htttpHeaderField: htttpHeaderField,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    // MARK: - IMAGE UPLOAD
    
    /// Upload image.
    public func uploadImage(image: UIImage,
                            url: String,
                            parameters: [String: Any]) async throws -> String? {
        guard let url = URL(string: url) else { return nil }
        guard let photo = ImageUploader.ImageData(withImage: image, forKey: "image") else { return nil }
        var multipartForm = ImageUploader.MultipartFormData(parameters: parameters, photos: [photo])
        multipartForm.addFields()
        let request = URLRequest(url: url, multipartFormData: multipartForm)
        let (data, _) = try await URLSession.shared.data(for: request)
        let imageURL = try JSONDecoder().decode(ImageUploader.DataImageResponse.self, from: data)
        return imageURL.data
    }
}
