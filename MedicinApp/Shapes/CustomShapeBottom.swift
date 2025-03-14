//
//  CustomShape.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 26/09/2024.
//

import SwiftUI

struct CustomShapeBottom: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .bottomLeft, cornerRadii: CGSize(width: 70, height: 70))
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShapeBottom()
}
