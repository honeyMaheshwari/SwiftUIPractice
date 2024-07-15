//
//  HomeTabBar.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct HomeTabBar: View {
    
    @State private var defaultTabView: Int = 1 // for landmark view
    
    var body: some View {
        TabView(selection: $defaultTabView) {
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
                .tag(0)
            
            LandmarksListView()
                .tabItem {
                    Text("Landmarks")
                    Image(systemName: "mappin")
                }
                .tag(1)
            
            IPLTeamView()
                .tabItem {
                    Text("IPL Teams")
                    Image(systemName: "person.3")
                }
                .tag(2)
            
            MessagesView()
                .tabItem {
                    Text("Message")
                    Image(systemName: "message")
                }
                .tag(3)
            
            NotesView()
                .tabItem {
                    Text("Notes")
                    Image(systemName: "pencil")
                }
                .tag(4)
            
            SettingsView()
                .tabItem {
                    Text("Settings")
                    Image(systemName: "gearshape")
                }
                .tag(5)
        }
        .tint(.red)
    }
}

#Preview {
    HomeTabBar()
}
