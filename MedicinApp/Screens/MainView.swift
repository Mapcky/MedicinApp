//
//  MainView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 16/09/2024.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                VStack(spacing: 0) {
                    // MARK: - TOP
                    NavBarView()
                        .padding(.horizontal, 15)
                        .padding(.top, 10)
                        .padding(.bottom, 15)
                        .background(
                            Color.colorTealLight
                                .clipShape(CustomShapeBottom())
                                .ignoresSafeArea()
                            
                        )
                    // MARK: - CENTER
                    ZStack{
                        Color.colorTealLight
                        ScrollView(.vertical, showsIndicators: false) {
                            BannerTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 20)
                            VStack(alignment: .center, spacing: 15) {
                                // MARK: - SECTIONS
                                TitleView(title: "Gestionate")
                                GridNavigation()
                                
                                //Herramientas
                                TitleView(title: "Heramientas")
                                ToolGridView()
                                
                                TitleView(title: "Nuestros Profesionales")
                                
                                // MARK: - DOCTORS
                                DoctorGridView()
                            }//: VSTACK
                        }//: SCROLL
                        .background(
                            backgroundColor
                                .clipShape(CustomShapeTop())
                        )
                    }//: ZSTACK

                }//: VSTACK
                
            }//: ZSTACK
            
        }//: NAVIGATIONVIEW
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationTitle("")
    }
}

#Preview {
    MainView()
}
