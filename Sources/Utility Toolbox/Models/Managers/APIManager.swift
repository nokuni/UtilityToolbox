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
        case badURL = "The URL for the request is wrong"
        case badResponse = "Server ERROR"
        case noData = "No DATA"
    }
    
    private func getURL(_ url: String) throws -> URL {
        guard let url = URL(string: url) else { throw APIError.badURL.rawValue }
        return url
    }
    
    private func urlRequest(url: URL,
                            httpMethod: HTTPMethod,
                            cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy) -> URLRequest {
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = httpMethod.rawValue
        return urlRequest
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
    
    /// Returns the data from the GET request.
    public func getRequest<M: Codable>(url: String,
                                       cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                       dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                       dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                       keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        let url: URL = try getURL(url)
        
        let request = urlRequest(url: url,
                                 httpMethod: HTTPMethod.get,
                                 cachePolicy: cachePolicy)
        
        let decoder = getDecoder(dateDecodingStrategy: dateDecodingStrategy,
                                 dataDecodingStrategy: dataDecodingStrategy,
                                 keyDecodingStrategy: keyDecodingStrategy)
        
        let (data, response) = try await sharedData(request: request)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw APIError.badResponse.rawValue
        }
        
        return try decoder.decode(M.self, from: data)
    }
    
    /// Returns the data from the POST request.
    public func postRequest<M: Codable>(url: String,
                                        value: M,
                                        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
                                        dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                        dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .base64,
                                        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        
        let url: URL = try getURL(url)
        
        var request = urlRequest(url: url,
                                 httpMethod: HTTPMethod.post,
                                 cachePolicy: cachePolicy)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let decoder = getDecoder(dateDecodingStrategy: dateDecodingStrategy,
                                 dataDecodingStrategy: dataDecodingStrategy,
                                 keyDecodingStrategy: keyDecodingStrategy)
        
        let object = try encode(value)
        request.httpBody = try? JSONSerialization.data(withJSONObject: object)
        
        let (data, response) = try await sharedData(request: request)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw APIError.badResponse.rawValue
        }
        
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
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw APIError.badResponse.rawValue
        }
        
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
    
    public func uploadImage(url: String,
                            parameters: [String: Any],
                            image: UIImage) async throws -> String? {
        guard let url = URL(string: url) else { return nil }
        guard let photo = ImageData(withImage: image, forKey: "image") else { return nil }
        var multipartForm = MultipartFormData(parameters: parameters, photos: [photo])
        multipartForm.addFields()
        let request = URLRequest(url: url, multipartFormData: multipartForm)
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            print(response)
            let imageURL = try! JSONDecoder().decode(DataImageResponse.self, from: data)
            return imageURL.data
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    
    /// Simple formatted method to GET data.
    public func get<M: Codable>(url: String) async throws -> M {
        try await getRequest(url: url)
    }
    
    /// Simple formatted method to GET data with an ID.
    public func get<M: Codable>(url: String, id: Int, keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) async throws -> M {
        try await getRequest(url: url + "\(id)", keyDecodingStrategy: keyDecodingStrategy)
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
