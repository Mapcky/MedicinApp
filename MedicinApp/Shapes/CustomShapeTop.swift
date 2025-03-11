//
//  CustomShapeTop.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 26/09/2024.
//

import SwiftUI

struct CustomShapeTop: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Define el radio de la esquina según el tamaño del rectángulo
        let cornerWidth = rect.size.width * 4 // Porcentaje del ancho
        let cornerHeight = rect.size.height * 0.17 // Porcentaje de la altura
        
        // Comienza el camino en la parte superior izquierda
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        // Dibuja la línea hasta la esquina superior derecha
        path.addLine(to: CGPoint(x: rect.maxX - cornerWidth, y: rect.minY))
        
        // Dibuja la curva en la esquina superior derecha
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + cornerHeight), control: CGPoint(x: rect.maxX, y: rect.minY))
        
        // Dibuja la línea hasta el borde derecho
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // Dibuja la línea hasta el borde inferior izquierdo
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        // Vuelve al punto inicial
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    CustomShapeTop()
}
