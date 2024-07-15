//
//  IPLTeamCell.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 15/07/24.
//

import SwiftUI

struct IPLTeamCell: View {
    
    let team: IPLTeam
    
    var body: some View {
        
        HStack(spacing: 20, content: {
            Image(team.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .center)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(team.name).font(.subheadline).fontWeight(.medium).lineLimit(1)
                
                if !team.winners.isEmpty {
                    HStack(content: {
                        Image("trophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text(team.winners)
                            .foregroundColor(.yellow)
                    })
                }
            })
            
        })
        
    }
}

#Preview {
    IPLTeamCell(team: IPLTeam(id: 1, name: "Chennai Super Kings", winners: "2010,2011,2018,2021,2023", icon: "csk"))
}

