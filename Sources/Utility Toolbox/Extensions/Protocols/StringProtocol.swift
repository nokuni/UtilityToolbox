//
//  File 2.swift
//  
//
//  Created by Maertens Yann-Christophe on 26/02/23.
//

import Foundation

public extension StringProtocol  {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}
