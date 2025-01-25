//
//  DoctorsView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/09/2024.
//

import SwiftUI

struct DoctorsView: View {
    // MARK: - PROPERTIES
    
    var doctor: Doctor
    
    var body: some View {
        VStack {
            Image(doctor.photo)
                .resizable()
                .scaledToFit()
                .background(
                    tealLightColor
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                )
            HStack {
                Text(doctor.name)
                    .foregroundStyle(.black)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 5)
                Spacer()
            }
            HStack {
                Text(doctor.specialty)
                    .foregroundStyle(.black)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 5)
                Spacer()
            }
            .padding(.bottom, 10)
        }
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 12))
        )
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.gray, lineWidth: 5)
            
        )
    }
}

#Preview {
    DoctorsView(doctor: Doctors[1])
}
