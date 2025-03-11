//
//  AppointmentItem.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 10/03/2025.
//

import SwiftUI

struct AppointmentItem: View {
    var body: some View {
        HStack(spacing: 15) {
            Text("8:30")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .bold()
            
            VStack {
                Text("21/03/2025")
                    .font(.subheadline)
                Text("Dra. Ana Maria")
                    .font(.headline)
                Text("Consulta")
                    .font(.caption)
            }
            
            Button(action: {}, label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
                    .background(Color.teal)
                    .clipShape(Circle())
            })//: BUTTON
        }//: HSTACK
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
    }
}

#Preview {
    VStack {
        AppointmentItem()
        AppointmentItem()
    }
    .background(Color.colorTealLight)
    .ignoresSafeArea()
}
