//
//  HMNavigationView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari on 15/07/24.
//

import SwiftUI

struct HMNavigationView<Content>: View where Content: View {
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        if #available(iOS 16, *) {
            NavigationStack(root: content)
        } else {
            NavigationView(content: content)
        }
    }
}
