//
//  BannerTabView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 26/09/2024.
//

import SwiftUI

struct BannerTabView: View {
    var body: some View {
        TabView {
            ForEach(banners, id: \.self) { item in
                BannerView(banner: item)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }//LOOP
            
        }//TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    BannerTabView()
}
