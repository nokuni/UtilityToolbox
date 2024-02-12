//
//  APIManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 13/03/2023.
//

import Foundation
import SwiftUI

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
        case url = "The URL for the request is wrong"
        case response = "Server ERROR"
        case data = "No DATA"
        case decoding = "Something went wrong on decoding the data"
        case encoding = "Something went wrong on encoding the data"
    }
    
    private func getURL(_ url: String) throws -> URL {
        guard let url = URL(string: url) else { throw APIError.url.rawValue }
        return url
    }
    
    private func urlRequest(url: URL,
                            httpMethod: HTTPMethod,
                            cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy) -> URLRequest {
        var request = URLRequest(url: url, cachePolicy: cachePolicy)
        request.httpMethod = httpMethod.rawValue
        if httpMethod == .post || httpMethod == .put {
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
        }
        
        return request
    }
    
    private func getDecoder(dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                            dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                            keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) -> JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        return decoder
    }
    
    private func sharedData(request: URLRequest) async throws -> (Data, URLResponse) {
        try await URLSession.shared.data(for: request)
    }
    
    private func encodedObject<T: Codable>(value: T) throws -> Data {
        do {
            let object = try encode(value)
            return try JSONSerialization.data(withJSONObject: object)
        } catch {
            throw APIError.encoding.rawValue
        }
    }
    
    private func requestedData(request: URLRequest) async throws -> (data: Data, response: URLResponse) {
        do {
            return try await sharedData(request: request)
        } catch {
            throw APIError.response.rawValue
        }
    }
    
    private func decodedData<T: Codable>(request: URLRequest,
                                         decoder: JSONDecoder) async throws -> T {
        do {
            let request = try await requestedData(request: request)
            return try decoder.decode(T.self, from: request.data)
        } catch {
            throw APIError.decoding.rawValue
        }
    }
    
    private func cleanURL(_ url: String) -> String {
        let hasLastSlash: Bool = url.isLastCharacter("/")
        let slash: String = hasLastSlash ? "/" : ""
        return hasLastSlash ? url : "\(url)\(slash)"
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
        
        if httpMethod == .post || httpMethod == .put {
            request.httpBody = try encodedObject(value: value)
        }
        
        let decoder = getDecoder(dateDecodingStrategy: dateDecodingStrategy,
                                 dataDecodingStrategy: dataDecodingStrategy,
                                 keyDecodingStrategy: keyDecodingStrategy)
        
        let data: T = try await decodedData(request: request, decoder: decoder)
        
        return data
    }
    
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
    
    /// Simple formatted method to POST data.
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
    
    /// Simple formatted method to PUT data.
    public func put<T: Codable>(url: String,
                                value: T,
                                cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> T {
        try await request(url: url,
                          value: value,
                          httpMethod: .put,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Simple formatted method to PUT data with an ID.
    public func put<M: Codable>(url: String,
                                id: Int,
                                value: M,
                                cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await request(url: "\(cleanURL(url))\(id)",
                          value: value,
                          httpMethod: .put,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Simple formatted method to DELETE data with an ID.
    public func delete<M: Codable>(url: String,
                                   id: Int,
                                   cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                   dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                   dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                   keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await request(url: "\(cleanURL(url))\(id)",
                          httpMethod: .delete,
                          cachePolicy: cachePolicy,
                          dateDecodingStrategy: dateDecodingStrategy,
                          dataDecodingStrategy: dataDecodingStrategy,
                          keyDecodingStrategy: keyDecodingStrategy)
    }
    
    /// Upload image.
    public func uploadImage(image: UIImage,
                            url: String,
                            parameters: [String: Any]) async throws -> String? {
        guard let url = URL(string: url) else { return nil }
        guard let photo = ImageData(withImage: image, forKey: "image") else { return nil }
        var multipartForm = MultipartFormData(parameters: parameters, photos: [photo])
        multipartForm.addFields()
        let request = URLRequest(url: url, multipartFormData: multipartForm)
        let (data, _) = try await URLSession.shared.data(for: request)
        let imageURL = try JSONDecoder().decode(DataImageResponse.self, from: data)
        return imageURL.data
    }
}

/// Image file upload method
struct ImageData {
    let key: String
    let filename: String
    let data: Data
    let mimeType: String
    init?(withImage image: UIImage, forKey key: String) {
        self.key = key
        self.mimeType = "image/jpeg"
        self.filename = "imagefile.jpg"
        guard let data = image.jpegData(compressionQuality: 0.7) else { return nil }
        self.data = data
    }
}

/// Image response upload response method
struct DataImageResponse: Codable {
    var data: String
}

/// Image upload field configuration method
struct MultipartFormData {
    let boundary: String = UUID().uuidString
    private(set) var httpBody = Data()
    var parameters: [String: Any]
    var photos: [ImageData]
    
    init(parameters: [String: Any], photos: [ImageData]) {
        self.parameters = parameters
        self.photos = photos
    }
    
    let lineBreak = "\r\n"
    
    mutating func addFields() {
        for (key, value) in parameters {
            httpBody.append("--\(boundary + lineBreak)")
            httpBody.append("Content-Disposition: form-data; name=\"\(key)\"\(lineBreak + lineBreak)")
            httpBody.append("\(value as! String + lineBreak)")
        }
        
        for photo in photos {
            httpBody.append("--\(boundary + lineBreak)")
            httpBody.append("Content-Disposition: form-data; name=\"\(photo.key)\"; filename=\"\(photo.filename)\"\(lineBreak)")
            httpBody.append("Content-Type: \(photo.mimeType + lineBreak + lineBreak)")
            httpBody.append(photo.data)
            httpBody.append(lineBreak)
        }
        
        httpBody.append("--\(boundary)--\(lineBreak)")
    }
}

extension URLRequest {
    init(url: URL,
         timeoutInterval: TimeInterval = 60,
         multipartFormData: MultipartFormData) {
        self.init(url: url, timeoutInterval: timeoutInterval)
        let boundary = multipartFormData.boundary
        httpMethod = "POST"
        httpShouldHandleCookies = false
        setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        var body = multipartFormData.httpBody
        body.append("--\(boundary)--")
        httpBody = body
    }
}

fileprivate extension Data {
    mutating func append(_ string: String) {
        guard let data = string.data(using: .utf8) else { return }
        append(data)
    }
    
    mutating func addField(_ string: String) {
        append(string)
        append(.httpFieldDelimiter)
    }
    
    mutating func addField(_ data: Data) {
        append(data)
        append(.httpFieldDelimiter)
    }
}

fileprivate extension String {
    static let httpFieldDelimiter = "\r\n"
}
