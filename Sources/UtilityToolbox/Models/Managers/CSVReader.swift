//
//  CSVReader.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import Foundation

public class CSVReader {
    
    public init() { }
    
    public enum CSVReaderError: Error {
        case wrongURL
    }
    
    public enum CSVFormat: String {
        case comma = ","
        case semicolon = ";"
    }
    
    private let citiesPath = "Sources/Utility Toolbox/Data/cities"
    
    public func printCSVData(path: String, format: CSVFormat) async throws -> [[String.SubSequence]] {
//        guard let url = Bundle.main.url(forResource: path, withExtension: "csv") else {
//            throw CSVReaderError.wrongURL
//        }
        
        let data = [[String.SubSequence]]()
        
//        for try await line in url.lines {
//            let parts = line.split(separator: format.rawValue)
//            data.append(parts)
//        }
        
        return data
    }
    
    public func printCities() async throws {
        let cities: [[String.SubSequence]] = try await printCSVData(path: citiesPath, format: .semicolon)
        print(cities)
    }
}

public struct MapCity {
    
    public init(geoNameID: Int,
                name: String,
                countryName: String,
                ASCIIName: String,
                alternateNames: String,
                population: Int,
                digitalElevationModel: Int,
                timezone: String,
                countryCode: String,
                coordinates: (Int, Int)) {
        self.geoNameID = geoNameID
        self.name = name
        self.countryName = countryName
        self.ASCIIName = ASCIIName
        self.alternateNames = alternateNames
        self.population = population
        self.digitalElevationModel = digitalElevationModel
        self.timezone = timezone
        self.countryCode = countryCode
        self.coordinates = coordinates
    }
    
    let geoNameID: Int
    let name: String
    let countryName: String
    let ASCIIName: String
    let alternateNames: String
    let population: Int
    let digitalElevationModel: Int
    let timezone: String
    let countryCode: String
    let coordinates: (Int, Int)
}
