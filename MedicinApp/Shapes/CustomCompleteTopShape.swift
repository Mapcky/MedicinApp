//
//  CustomCompleteTopShape.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 09/10/2024.
//

import SwiftUI

struct CustomCompleteTopShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners:  [.topRight, .topLeft], cornerRadii: CGSize(width: 70, height: 70))
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomCompleteTopShape()
}
