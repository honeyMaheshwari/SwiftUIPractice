//
//  Landmarks.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct LandmarksListView: View {
    
    let cities = JSONFileDecoder.decodeJSONFile(.landmarks, type: City.self)
    
    var body: some View {
        HMNavigationView {
            List {
                ForEach(cities, id: \.cityId) { city in
                    Section(header: Text(city.name)) {
                        ForEach(city.landmarks, id: \.landmarkId, content: { landmark in
                            NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                                LandmarkCell(landmark: landmark)
                            }
                        })
                    }
                }
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    LandmarksListView()
}
