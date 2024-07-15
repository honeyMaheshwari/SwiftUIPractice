//
//  LandmarkDetailView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    
    let landmark: Landmark
    
    var body: some View {
        VStack {
            Image(landmark.photo)
                .resizable()
                .scaledToFit()
            
            Text(landmark.description)
            
            Spacer()
        }
        .padding()
        .navigationTitle(landmark.name)
        
    }
}

#Preview {
    LandmarkDetailView(landmark: Landmark(landmarkId: 1, name: "Test", photo: "goi", description: "Landmark Description"))
}
