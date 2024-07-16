//
//  SelectImageView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 16/07/24.
//

import SwiftUI

struct SelectImageView: View {
    
    @State private var currentImage: UIImage = UIImage(systemName: "photo") ?? UIImage()
    @State private var showPhotoLibrary: Bool = false
    @State private var showShareSheet: Bool = false
    
    var body: some View {
        VStack {
            Image(uiImage: currentImage)
                .resizable()
                .scaledToFit()
                .padding()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.clear, lineWidth: 0))
            
            HStack {
                Button(action: {
                    showPhotoLibrary.toggle()
                }, label: {
                    Text("Select Image")
                })
                .sheet(isPresented: $showPhotoLibrary, content: {
                    ImagePickerView(selectedImage: $currentImage, sourceType: .photoLibrary, allowsEditing: true)
                })
                
                Spacer()
                
                Button(action: {
                    showShareSheet.toggle()
                }, label: {
                    Text("Share")
                })
                .sheet(isPresented: $showShareSheet, content: {
                    ShareSheetView(contents: [currentImage])
                })
                
            }
            .padding()
            .tint(.blue)
            
        }
    }
    
}

#Preview {
    SelectImageView()
}
