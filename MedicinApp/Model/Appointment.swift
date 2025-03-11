//
//  Appointment.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/02/2025.
//

import Foundation

struct Appointment: Codable {
    var id: Int?
    var patient: User?
    var medic: Medic?
    var date: Date
    var status: AppointmentStatus
    
}

enum AppointmentStatus: Codable {
    case pending
    case canceled
    case ended
}
