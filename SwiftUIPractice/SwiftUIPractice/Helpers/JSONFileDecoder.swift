//
//  JSONFileDecoder.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari on 15/07/24.
//

import Foundation

enum JSONFileName: String {
    case landmarks
}

struct JSONFileDecoder {
    
    static func decodeJSONFile<T: Decodable>(_ file: JSONFileName, type: T.Type) -> [T] {
        if let filePath = Bundle.main.path(forResource: file.rawValue, ofType: "json") {
            let url = URL(fileURLWithPath: filePath)
            do {
                let landmarkData = try Data(contentsOf: url, options: .alwaysMapped)
                return try JSONDecoder().decode([T].self, from: landmarkData)
            } catch let error {
                print("decodeJSONFile error -> \(String(describing: error))")
                return []
            }
        }
        return []
    }
    
}
