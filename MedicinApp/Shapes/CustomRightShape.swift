//
//  CustomRightShape.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 16/10/2024.
//

import SwiftUI

struct CustomRightShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners:  [.bottomRight, .topRight], cornerRadii: CGSize(width: 70, height: 70))
        return Path(path.cgPath)
    }
}

#Preview {
    CustomRightShape()
}
