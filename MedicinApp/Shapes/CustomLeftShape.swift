//
//  CustomLeftShape.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 16/10/2024.
//

import SwiftUI

struct CustomLeftShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners:  [.bottomLeft, .topLeft], cornerRadii: CGSize(width: 70, height: 70))
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomLeftShape()
}
