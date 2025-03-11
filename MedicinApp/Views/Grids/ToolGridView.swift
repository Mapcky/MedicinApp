//
//  ToolGridView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 09/10/2024.
//

import SwiftUI

struct ToolGridView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating = false
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content:  {
                NavigationLink(destination: ImcView()){
                    VStack(spacing: 15) {
                        Circle().fill(.white)
                            .shadow(radius: 1, x: 0, y: 2)
                            .frame(width: 110, height: 110)
                            .overlay(
                                Image("Calculator")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                            )
                        Text("Calculadora IMC")
                            .frame(maxWidth: 100)
                            .font(.subheadline)
                            .fontWeight(.black)
                            .foregroundStyle(.colorDarkBlue)
                            .onTapGesture() {
                                withAnimation(.easeOut) {
                                    isAnimating.toggle()
                                }
                            }
                    }//:VSTACK
                    .padding(10)
                    
                }//: NAVLINK
                NavigationLink(destination: BodyFatCalculator()){
                    VStack(spacing: 15) {
                        Circle().fill(.white)
                            .shadow(radius: 1, x: 0, y: 2)
                            .frame(width: 110, height: 110)
                            .overlay(
                                Image("FatPercent")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.black)
                                
                            )
                        Text("Calcula tu porcentaje de grasa")
                            .frame(maxWidth: 150)
                            .font(.subheadline)
                            .fontWeight(.black)
                            .foregroundStyle(.colorDarkBlue)
                    }//:VSTACK
                    .padding(10)
                    
                }//:NAVLINK
                
            })//: GRID
            .frame(height: 210)
            .padding(.horizontal, 15)
            .padding(.vertical, 5)
        }
    }
}

#Preview {
    ScrollView {
        ToolGridView()
    }
}
