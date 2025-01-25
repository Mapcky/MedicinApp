//
//  Login.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 16/09/2024.
//

import SwiftUI
//Sin usar
struct LoginView: View {
    
    @State private var user = ""
    @State private var pass = ""
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 15, content: {
            Spacer()
            
            
            TextField("Username", text: $user)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 7))
                .font(.title2)
            TextField("Password", text: $pass)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 7))
                .font(.title2)
            
            Spacer()
        })
        .padding(.horizontal, 15)
        .background(
            .linearGradient(colors: [ tealColor, darkBlueColor, darkBlueColor], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

#Preview {
    LoginView()
}
