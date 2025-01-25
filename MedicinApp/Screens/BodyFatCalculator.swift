//
//  BodyFatCalculator.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 09/10/2024.
//

import SwiftUI


struct BodyFatCalculator: View {
    // MARK: - PROPERTIES
    @State private var neck: String = ""
    @State private var waist: String = ""
    @State private var height: String = ""
    @State private var age: String = ""
    @State private var weight: String = ""
    @State private var hip: String = ""
    @State private var didCalculated: Bool = false
    @State private var male: Bool = true
    @State private var BFP: Double = 0.0


    // MARK: - FUNCTIONS

    func calculateMan() {
        
        let waistMinusNeck = log10((Double(waist) ?? 0.0)-(Double(neck) ?? 0.0))
        
        let logHeight = log10(Double(height) ?? 0.0)
        
        BFP = (495/(1.0324 - 0.19077 * waistMinusNeck + 0.15456 * logHeight)) - 450
    }
    
    func calculateWoman() {
        
        let waistHipNeck = log10((Double(waist) ?? 0.0)
                            + (Double(hip) ?? 0.0)
                            - (Double(neck) ?? 0.0))
        
        let logHeight = log10(Double(height) ?? 0.0)
        
        BFP = (495/(1.29579 - 0.35004 * waistHipNeck + 0.22100 * logHeight)) - 450
    }
    
    var fatMass: Double {
        return BFP/100 * (Double(weight) ?? 0.0)
    }
    
    var leanMass: Double {
        return (Double(weight) ?? 0.0) - fatMass
    }
    
    func reset() {
        neck = ""
        waist = ""
        height = ""
        weight = ""
        age = ""
        hip = ""
        didCalculated = false
        BFP = 0.0
        male = true
        
    }
    
    
    var ageIdelPorcentage: String {
        if let age = Double(age) {
            if male {
                switch age {
                case 20...24:
                    return "8.5"
                case 25...29:
                    return "10.5"
                case 30...34:
                    return "12.7"
                case 35...39:
                    return "13.7"
                case 40...44:
                    return "15.3"
                case 45...49:
                    return "16.4"
                case 50...54:
                    return "18.9"
                case 55...100:
                    return "20.9"
                default:
                    return "20.9"
                }//: Switch
            }//: CONDITIONAL
            else {
                switch age {
                case 20...24:
                    return "17.7"
                case 25...29:
                    return "18.4"
                case 30...34:
                    return "19.3"
                case 35...39:
                    return "21.5"
                case 40...44:
                    return "22.2"
                case 45...49:
                    return "22.9"
                case 50...54:
                    return "25.2"
                case 55...100:
                    return "26.3"
                default:
                    return "26.3"
                }//: Switch
            }//: Conditional
        }
        return ""
    }
    
    var bodyType: String {
            if male {
                switch BFP {
                case 2..<6:
                    return "Grasa esencial"
                case 6..<14:
                    return "Atleta"
                case 14..<18:
                    return "Fitness"
                case 18..<25:
                    return "Promedio"
                case 25...:
                    return "Obeso"
                default:
                    break
                }//: Switch
        }
        else {
            switch BFP {
            case 10..<14:
                return "Grasa esencial"
            case 14...20:
                return "Atleta"
            case 21...24:
                return "Fitness"
            case 25...31:
                return "Promedio"
            case 32...100:
                return "Obeso"
            default:
                break
            }//: Switch
        }
        return ""
    }
    
    
    func textColor() -> Color {
        if male {
            switch BFP {
            case 0..<2:
                return .red
            case 2..<6:
                return .yellow
            case 6..<14:
                return .green
            case 14..<18:
                return darkBlueColor
            case 18..<25:
                return .yellow
            case 25...:
                return .red
            default:
                return .black
            }
        } else {
            switch BFP {
            case 0..<10:
                return .red
            case 10..<14:
                return .yellow
            case 14..<21:
                return .green
            case 21..<25:
                return darkBlueColor
            case 25..<32:
                return .yellow
            case 32...:
                return .red
            default:
                return .black
            }
        }
    }
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundColor
            if !didCalculated {
                VStack(alignment: .center, spacing: 20) {
                    
                    Text("Calcula tu porcentaje de grasa")
                        .font(.system(size: 42, weight: .bold, design: .rounded))

                    Divider()
                    
                    HStack {
                        Text("Genero")
                        Picker("Genero", selection: $male, content: {
                            Text("Masculino").tag(true)
                            Text("Femenino").tag(false)
                        })
                    }
                    
                    TextField("Edad", text: $age)
                        .keyboardType(.numberPad)
                        .padding(.leading, 10)
                        .font(.title)
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray))
                    
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
                    
                    TextField("Cuello (Cm)", text: $neck)
                        .keyboardType(.numberPad)
                        .padding(.leading, 10)
                        .font(.title)
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray))
                    
                    TextField("Cintura (Cm)", text: $waist)
                        .keyboardType(.numberPad)
                        .padding(.leading, 10)
                        .font(.title)
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray))
                    
                    if !male {
                        TextField("Cadera (Cm)", text: $hip)
                            .keyboardType(.numberPad)
                            .padding(.leading, 10)
                            .font(.title)
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray))
                    }
                    
                    Button(action: {
                        if male {
                            calculateMan()
                        }
                        else {
                            calculateWoman()
                        }
                        didCalculated = true

                        
                    }
                           , label: {
                        HStack {
                            Spacer()
                            Text("Calcular")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .padding(5)
                            
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
                    Text("Tu porcentaje de grasa es")
                        .font(.system(size: 46, weight: .bold, design: .rounded))
                    Text(didCalculated ? String(format: "%.1f",BFP) : "" + " %")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundStyle(textColor())
                    
                    fatPercentBar(pointerPosition: CGFloat(BFP), man: male)

                    
                    Divider()
                    Text("Tabla de Indices de Masa Corporal")
                        .font(.title2)
                    Group{
                        HStack{
                            Text("Categoria")
                            Spacer()
                            Text(bodyType)
                        }
                        HStack{
                            Text("Porcentaje Ideal")
                            Spacer()
                            Text(ageIdelPorcentage)
                        }
                        HStack{
                            Text("Body fat mass")
                            Spacer()
                            Text(String(format: "%.2f",fatMass)+" Kg")
                        }
                        HStack{
                            Text("Lean Mass")
                            Spacer()
                            Text(String(format: "%.2f",leanMass)+" Kg")
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
                                .padding(5)
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
            }
        }
    }
}



#Preview {
    BodyFatCalculator()
}
