//
//  BannerView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 26/09/2024.
//

import SwiftUI

struct BannerView: View {
    // MARK: - PROPERTIES
    
    var banner: String
    
    // MARK: - BODY
    var body: some View {
        Image(banner)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    BannerView(banner: "banner-1")
}
