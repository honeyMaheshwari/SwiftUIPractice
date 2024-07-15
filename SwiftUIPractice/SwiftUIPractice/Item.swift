//
//  Item.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 12/07/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
