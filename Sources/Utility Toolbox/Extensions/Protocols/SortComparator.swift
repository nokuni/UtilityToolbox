//
//  SortComparator.swift
//  
//
//  Created by Yann Christophe MAERTENS on 05/06/2023.
//

import Foundation

public extension SortComparator {
    /// Returns the reverse of the sort.
    var reverse: Self  {
        var reverse = self
        reverse.order = .reverse
        return reverse
    }
}
