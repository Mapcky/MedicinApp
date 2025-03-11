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
        NavigationStack {
            ZStack {
                VStack(spacing: 0) {
                    // MARK: - CENTER
                    ZStack{
                        Color.colorTealLight
                        ScrollView(.vertical, showsIndicators: false) {
                            BannerTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 20)
                                .offset(y: 50)
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
                        .clipShape(CustomShapeTop())
                        .clipped()
                    }//: ZSTACK
                    

                }//: VSTACK
                .overlay(content: {
                    // MARK: - TOP
                    VStack{
                        NavBarView()
                            .padding(.horizontal, 15)
                            .padding(.top, 10)
                            .padding(.bottom, 15)
                            .background(
                                Color.colorTealLight
                                    .clipShape(CustomShapeBottom())
                                    .ignoresSafeArea()
                            )
                        Spacer()
                    }
                })
            }//: ZSTACK
            
        }//: NAVIGATIONSTACK
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationTitle("")
    }
}

#Preview {
    MainView()
}
