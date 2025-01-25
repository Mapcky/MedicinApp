//
//  DoctorInfoTopView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 01/10/2024.
//

import SwiftUI

struct DoctorInfoTopView: View {
    var body: some View {
        HStack{
            VStack (alignment: .leading, spacing: 10){
                    Text("Dra ...")
                    .font(.system(size: 42, weight: .black, design: .rounded))
                        .foregroundColor(.white)
                        .shadow(radius: 10, x: 0, y: 4)
                    Text("Especialista en...")
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 10, x: 0, y: 4)
                }
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 15)
                Spacer()
                Image("Doctor-1")
                    .resizable()
                    .scaledToFit()
                    .offset(y: 35)
                    .shadow(radius: 5, x: 0, y: 10)
                
            }
            .frame(maxHeight: 300)
            .background(
                Color.colorTealLight
                //.clipShape(CustomShapeBottom())
            )
            
    }
}

#Preview {
    DoctorInfoTopView()
}
