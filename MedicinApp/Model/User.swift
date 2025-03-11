//
//  User.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/02/2025.
//

import Foundation

struct User: Codable {
    var id: Int
    var name: String
    var birthDate: Date?
    var contactNumber: String?
}
