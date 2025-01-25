//
//  DoctorGridView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/09/2024.
//

import SwiftUI

struct DoctorGridView: View {
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                    ForEach(Doctors) {
                        doctor in
                        NavigationLink(destination: DoctorInfoView()){
                            DoctorsView(doctor: doctor)
                        }
                    }
                })//: GRID
                .frame(height: 200)
                .padding(15)
            }//: SCROLL
    }//: BODY
}

#Preview {
    DoctorGridView()
}
