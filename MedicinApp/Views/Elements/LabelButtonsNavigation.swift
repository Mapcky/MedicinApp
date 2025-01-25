//
//  LabelButtonsNavigation.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 03/10/2024.
//

import SwiftUI

struct LabelButtonsNavigation: View {
    var buttonImage: String
    var buttonName: String
    var body: some View {
        VStack {
            Circle().fill(backgroundColor)
                .shadow(radius: 4)
                .frame(width: 110, height: 110)
                .overlay(
                    Image(buttonImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                )
            Text(buttonName)
                .font(.subheadline)
                .fontWeight(.black)
                .foregroundStyle(.colorDarkBlue)
        }//:VSTACK
        .padding(15)
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 4)
        )
    }
}

#Preview {
    LabelButtonsNavigation(buttonImage: "Hospital", buttonName: "Sacar Turno")
}
