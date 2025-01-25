//
//  fatPercentBar.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 16/10/2024.
//

import SwiftUI

struct fatPercentBar: View {
    // MARK: - PROPERTIES
    var pointerPosition: CGFloat // Posición de la flecha (de 0 a 40)
    let ranges: [CGFloat] = [1, 4, 8, 4, 7, 15]
    let rangesF: [CGFloat] = [9, 4, 7, 4, 7, 8]
    let totalRange: CGFloat = 40
    var man: Bool

    
    // MARK: - FUNCTIONS
    
    // Función que calcula el ancho proporcional de cada rectángulo según el rango
    func proportionalWidth(for range: CGFloat) -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width - 0 // Ajustar para el padding
        return (range / totalRange) * screenWidth
    }

    
    // Función que calcula la posición horizontal de la flecha
    func calculatePointerOffset(pointer: CGFloat) -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let sliderRange: CGFloat = 40
        let relativePosition = pointer / sliderRange
        let barWidth = screenWidth - 20 // Espaciado extra para padding
        return (relativePosition * barWidth) - (screenWidth / 2)
    }
    
    // MARK: - BODY
    var body: some View {
        VStack {
            if man {
                HStack(spacing: 0) {
                    HStack(spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Rectangle()
                                .fill(.red)
                                .frame(width: proportionalWidth(for: ranges[0]), height: 10)
                                .clipShape(CustomLeftShape())
                            Text("0")
                        }//: VSTACK
                        VStack(alignment: .leading, spacing: 0) {
                            Rectangle()
                                .fill(.yellow)
                                .frame(width: proportionalWidth(for: ranges[1]), height: 10)
                            Text("2")
                        }//:VSTACK
                    }//:HSTACK
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Rectangle()
                            .fill(.green)
                            .frame(width: proportionalWidth(for: ranges[2]), height: 10)
                        Text("6")
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Rectangle()
                            .fill(.colorDarkBlue)
                            .frame(width: proportionalWidth(for: ranges[3]), height: 10)
                        Text("14")
                        
                    }
                    
                    VStack (alignment: .leading, spacing: 0) {
                        
                        Rectangle()
                            .fill(.yellow)
                            .frame(width: proportionalWidth(for: ranges[4]), height: 10)
                        Text("18")
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Rectangle()
                            .fill(.red)
                            .frame(width: proportionalWidth(for: ranges[5]), height: 10)
                            .clipShape(CustomRightShape())
                        Text("25+")
                    }
                }//: HSTACK
                .drawingGroup()
            } else {
                HStack(spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Rectangle()
                                .fill(.red)
                                .frame(width: proportionalWidth(for: rangesF[0]), height: 10)
                                .clipShape(CustomLeftShape())
                            Text("0")
                        }//: VSTACK
                        VStack(alignment: .leading, spacing: 0) {
                            Rectangle()
                                .fill(.yellow)
                                .frame(width: proportionalWidth(for: rangesF[1]), height: 10)
                            Text("10")
                                .layoutPriority(1)
                        }//:VSTACK
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Rectangle()
                            .fill(.green)
                            .frame(width: proportionalWidth(for: rangesF[2]), height: 10)
                        Text("14")
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Rectangle()
                            .fill(.colorDarkBlue)
                            .frame(width: proportionalWidth(for: rangesF[3]), height: 10)
                        Text("21")
                        
                    }
                    
                    VStack (alignment: .leading, spacing: 0) {
                        
                        Rectangle()
                            .fill(.yellow)
                            .frame(width: proportionalWidth(for: rangesF[4]), height: 10)
                        Text("25")
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Rectangle()
                            .fill(.red)
                            .frame(width: proportionalWidth(for: rangesF[5]), height: 10)
                            .clipShape(CustomRightShape())
                        Text("32+")
                    }
                }//: HSTACK
            }
        }
        
        // Flecha
        TrianglePointer()
            .fill(Color.black)
            .frame(width: 20, height: 20)
            .offset(x: calculatePointerOffset(pointer: pointerPosition)) // Controlar la posición de la flecha
        

    }
}

// Vista personalizada para la flecha en forma de triángulo
struct TrianglePointer: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))  // Punto superior
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // Esquina derecha
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // Esquina izquierda
        path.closeSubpath()
        return path
    }
}

#Preview {
    fatPercentBar(pointerPosition: 14, man: true)
}
 
