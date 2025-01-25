//
//  ImcView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 23/09/2024.
//

import SwiftUI

struct ImcView: View {
    // MARK: - PROPERTIES
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var didCalculated: Bool = false
    @State private var imc: Float = 0
    
    // MARK: - FUNC
    func calculateIMC(){
        let altura = ((Float(height) ?? 0)/100)
        imc = ((Float(weight) ?? 0) / pow(altura,2))
        didCalculated = true
    }
    
    func reset() {
        height = ""
        weight = ""
        didCalculated = false
    }
    
    func imcColor() -> Color {
        switch imc {
        case ..<18.5:
            return tealColor
        case 18.5..<25:
            return .green
        case 25..<30:
            return .yellow
        default:
            return .red
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColor
            if !didCalculated {
                VStack(alignment: .center, spacing: 20) {
                    
                    Text("Calcula tu IMC")
                        .font(.system(size: 42, weight: .bold, design: .rounded))
                    Divider()
                    
                    TextField("Altura (Cm)", text: $height)
                        .keyboardType(.numberPad)
                        .padding(.leading, 10)
                        .font(.title)
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray))
                    
                    
                    TextField("Peso (Kg)", text: $weight)
                        .keyboardType(.numberPad)
                        .padding(.leading, 10)
                        .font(.title)
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray))
                    
                    Button(action: {
                        calculateIMC()
                    }
                           , label: {
                        HStack {
                            Spacer()
                            Text("Calcular")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            
                            Spacer()
                        }//: HSTACK
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(tealColor)
                                
                        )
                        
                    })
                    
                }//: VSTACK
                .padding(.horizontal, 50)
                
            } else {
                VStack(alignment: .center, spacing: 20) {
                    Text("Tu IMC es")
                        .font(.system(size: 46, weight: .bold, design: .rounded))
                    Text(didCalculated ? String(format: "%.2f",imc) : "")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundStyle(imcColor())
                    
                    Divider()
                    Text("Tabla de Indices de Masa Corporal")
                        .font(.title2)
                    Group{
                        HStack{
                            Text("Peso inferior al normal")
                            Spacer()
                            Text("Menor a 18.5")
                        }
                        HStack{
                            Text("Normal")
                            Spacer()
                            Text("18.5 - 24.9")
                        }
                        HStack{
                            Text("Peso superior al normal")
                            Spacer()
                            Text("25.0 - 29.9")
                        }
                        HStack{
                            Text("Obesidad")
                            Spacer()
                            Text("Mayor a 30.0")
                        }
                    }
                    .padding(.horizontal, 40)
                    .font(.title3)
                    Divider()
                    
                    Button(action: {
                        reset()
                    }
                           , label: {
                        HStack {
                            Spacer()
                            Text("Volver a Calcular")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            
                            
                            Spacer()
                        }//: HSTACK
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(tealColor)
                            
                        )
                    })
                }//: VSTACK
                .padding(20)
                
            }//: CONDITIONAL
        }//: BODY
    }
}

#Preview {
    ImcView()
}
