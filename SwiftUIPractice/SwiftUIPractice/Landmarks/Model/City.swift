//
//  City.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import Foundation

struct City: Decodable {
    let cityId: Int
    let name: String
    let landmarks: [Landmark]
}
