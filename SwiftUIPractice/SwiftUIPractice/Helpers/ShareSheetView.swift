//
//  ShareSheetView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 16/07/24.
//

import SwiftUI

struct ShareSheetView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIActivityViewController
    var contents: [Any] = []
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: contents, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
    
}

#Preview {
    ShareSheetView()
}
