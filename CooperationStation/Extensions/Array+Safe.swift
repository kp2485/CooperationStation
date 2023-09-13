//
//  Array+Safe.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/13/23.
//

import Foundation

extension Array {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

