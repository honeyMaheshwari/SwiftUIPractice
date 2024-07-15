//
//  SearchBarView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct SearchBarView: UIViewRepresentable {
    
    typealias UIViewType = UISearchBar
    
    @Binding var searchBarText: String
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Search Team"
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = searchBarText
    }
        
}

extension SearchBarView {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $searchBarText)
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var searchBarValue: String
        
        init(text: Binding<String>) {
            _searchBarValue = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            searchBarValue = searchText
        }
    }
    
}


#Preview {
    SearchBarView(searchBarText: .constant(""))
}
