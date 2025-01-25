//
//  Doctor.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/09/2024.
//

import Foundation

struct Doctor: Identifiable {
    var id = UUID()
    let name: String
    let specialty: String
    let photo: String
}
