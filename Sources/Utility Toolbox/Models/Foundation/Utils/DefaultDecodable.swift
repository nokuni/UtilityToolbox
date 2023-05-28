//
//  DefaultDecodable.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/04/23.
//

import Foundation

public protocol DecodableDefaultSource {
    associatedtype Value: Decodable
    static var defaultValue: Value { get }
}

public enum DecodableDefault { }

public extension DecodableDefault {
    @propertyWrapper
    struct Wrapper<Source: DecodableDefaultSource> {
        
        public init(wrappedValue: Source.Value = Source.defaultValue) {
            self.wrappedValue = wrappedValue
        }
        
        public typealias Value = Source.Value
        public var wrappedValue: Source.Value
    }
}

extension DecodableDefault.Wrapper: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        wrappedValue = try container.decode(Value.self)
    }
}

public extension KeyedDecodingContainer {
    func decode<T>(_ type: DecodableDefault.Wrapper<T>.Type,
                   forKey key: Key) throws -> DecodableDefault.Wrapper<T> {
        try decodeIfPresent(type, forKey: key) ?? .init()
    }
}

public extension DecodableDefault {
    typealias Source = DecodableDefaultSource
    typealias Enum = Decodable & RawRepresentable
    typealias List = Decodable & ExpressibleByArrayLiteral
    typealias Map = Decodable & ExpressibleByDictionaryLiteral
    
    enum Sources {
        public enum True: Source {
            public static var defaultValue: Bool { true }
        }
        
        public enum False: Source {
            public static var defaultValue: Bool { false }
        }
        
        public enum EmptyString: Source {
            public static var defaultValue: String { "" }
        }
        
        public enum DefaultEnumCase<T: Enum>: Source {
            public static var defaultValue: T? { .none }
        }
        
        public enum EmptyList<T: List>: Source {
            public static var defaultValue: T { [] }
        }
        
        public enum EmptyMap<T: Map>: Source {
            public static var defaultValue: T { [:] }
        }
        
        public enum ZeroInt: Source {
            public static var defaultValue: Int { 0 }
        }
        
        public enum OneInt: Source {
            public static var defaultValue: Int { 1 }
        }
        
        public enum ZeroFloat: Source {
            public static var defaultValue: Double { 0.0 }
        }
        
        public enum OneFloat: Source {
            public static var defaultValue: Double { 1.0 }
        }
    }
}

public extension DecodableDefault {
    typealias True = Wrapper<Sources.True>
    typealias False = Wrapper<Sources.False>
    typealias EmptyString = Wrapper<Sources.EmptyString>
    typealias EmptyList<T: List> = Wrapper<Sources.EmptyList<T>>
    typealias EmptyMap<T: Map> = Wrapper<Sources.EmptyMap<T>>
    typealias ZeroInt = Wrapper<Sources.ZeroInt>
    typealias OneInt = Wrapper<Sources.OneInt>
    typealias ZeroFloat = Wrapper<Sources.ZeroFloat>
    typealias OneFloat = Wrapper<Sources.OneFloat>
}

extension DecodableDefault.Wrapper: Equatable where Value: Equatable { }

extension DecodableDefault.Wrapper: Hashable where Value: Hashable { }

extension DecodableDefault.Wrapper: Encodable where Value: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue)
    }
}
