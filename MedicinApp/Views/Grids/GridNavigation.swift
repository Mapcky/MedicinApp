//
//  GridNavigation.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 02/10/2024.
//

import SwiftUI

struct GridNavigation: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content:  {
                NavigationLink(destination: EmptyView()){
                        LabelButtonsNavigation(buttonImage: "filePen", buttonName: "Sacar Turno")
                }
                NavigationLink(destination: DoctorsView(doctor: Doctors[1])){
                        LabelButtonsNavigation(buttonImage: "ClipBoard", buttonName: "Mis Turnos")
                }
                NavigationLink(destination: EmptyView()){
                        LabelButtonsNavigation(buttonImage: "Hospital", buttonName: "Clinicas")
                }
                NavigationLink(destination: EmptyView()){
                        LabelButtonsNavigation(buttonImage: "Message", buttonName: "Mensajes")
                }
            })//: GRID
            //.frame(height: 200)
            .padding(15)
        }//: SCROLL
    }
}

#Preview {
    GridNavigation()
}
