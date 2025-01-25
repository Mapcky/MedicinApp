//
//  TitleView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/09/2024.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//HSTACK
        .padding(.horizontal)
        .padding(.vertical, 10)
    }
}

#Preview {
    TitleView(title: "Titulo")
}
