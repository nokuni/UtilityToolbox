//
//  ImageUploader.swift
//
//
//  Created by Yann Christophe Maertens on 15/02/2024.
//

import UIKit

public class ImageUploader {
    
    public init() { }
    
    /// Image file upload method
    struct ImageData {
        let key: String
        let filename: String
        let data: Data
        let mimeType: String
        public init?(withImage image: UIImage, forKey key: String) {
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
        
        public init(parameters: [String: Any], photos: [ImageData]) {
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

extension URLRequest {
    init(url: URL,
         timeoutInterval: TimeInterval = 60,
         multipartFormData: ImageUploader.MultipartFormData) {
        self.init(url: url, timeoutInterval: timeoutInterval)
        let boundary = multipartFormData.boundary
        httpMethod = "POST"
        httpShouldHandleCookies = false
        setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        var body = multipartFormData.httpBody
        let boundaryString = "--\(boundary)--"
        body.append(boundaryString)
        httpBody = body
    }
}
