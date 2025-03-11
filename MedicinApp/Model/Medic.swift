//
//  Medic.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/02/2025.
//

import Foundation

struct Medic: Codable {
    var id: Int
    var nombre: String
    var especialidad: Speciality
    var schedule: [AppointmentRange]
    
}

struct AppointmentRange: Codable {
    var id: Int
    var day: WeekDay
    var start: DateComponents
    var end: DateComponents
}

enum WeekDay: String, Codable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
