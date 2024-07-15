//
//  IPLTeamView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct IPLTeamView: View {
    
    @State private var teams = JSONFileDecoder.decodeJSONFile(.iplTeams, type: IPLTeam.self)
    @State private var searchText: String = String()
    
    var body: some View {
        
        VStack {
            SearchBarView(searchBarText: $searchText)
            
            List {
                let teams = self.teams.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })
                ForEach(teams, id: \.id, content: { team in
                    IPLTeamCell(team: team)
                })
            }
        }
        
    }
    
}

#Preview {
    IPLTeamView()
}
