//
//  LoginView.swift
//  SwiftUIPractice
//
//  Created by Honey Maheshwari TaskHuman on 12/07/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userName: String = String()
    @State private var password: String = String()
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            
            TextField("User Name", text: $userName)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
            
            HStack {
                Button(action: {
                    debugPrint("Login tapped")
                }, label: {
                    Text("Login")
                })
                .disabled(userName.count < 4 || password.count < 4)
                
                Spacer()
                
                Button(action: {
                    debugPrint("Forgot Password tapped")
                }, label: {
                    Text("Forgot Password")
                })
            }
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
