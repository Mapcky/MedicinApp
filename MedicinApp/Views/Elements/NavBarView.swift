//
//  NavigationView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 26/09/2024.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        ZStack {
           /* Spacer()
            Text("MedicinApp")
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.teal)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
            */
            //Centrado
            HStack (alignment: .center){
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                    
                    Text("Hola, Usuario")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.teal)
                }
                
                Spacer()

                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.teal)
                })
                
            }//: HSTACK
        }
        .padding()
    }
}

#Preview {
    NavBarView()
}
