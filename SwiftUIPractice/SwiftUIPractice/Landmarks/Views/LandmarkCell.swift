//
//  LandmarkCell.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct LandmarkCell: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.photo)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    LandmarkCell(landmark: Landmark(landmarkId: 1, name: "Test", photo: "goi", description: "test"))
}
