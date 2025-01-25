//
//  Utilities.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 16/09/2024.
//


import SwiftUI

// COLORS
let darkBlueColor: Color = Color("ColorDarkBlue")
let tealColor: Color = Color("ColorTeal")
let backgroundColor: Color = Color("BackgroundColor")
let tealLightColor: Color = Color("ColorTealLight")


// IMAGES
let doctorsImages: [String] = [
    "Doctor-1",
    "Doctor-2",
    "Doctor-3",
    "Doctor-4",
    "Doctor-5",
    "Doctor-6",
    "Doctor-7",
    "Doctor-8"
]

let banners: [String] = [
    "banner-0",
    "banner-1",
    "banner-2",
    "banner-3",
    "banner-4"
    
]

// LAYOUT
let columnSpacing: CGFloat = 40
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}
var gridLayoutTwo: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// DATA

let doc: Doctor = Doctor(name: "Laura", specialty: "Cardiologia", photo: "Doctor-1")
let Doctors: [Doctor] = [
    Doctor(name: "Laura", specialty: "Cardiología", photo: "Doctor-1"),
    Doctor(name: "Maria", specialty: "Nutricionista", photo: "Doctor-2"),
    Doctor(name: "Hana", specialty: "Pediatría", photo: "Doctor-3"),
    Doctor(name: "Pilar", specialty: "Cardiología", photo: "Doctor-4"),
    Doctor(name: "Sonia", specialty: "Ginecología", photo: "Doctor-5"),
    Doctor(name: "Arnold", specialty: "Urología", photo: "Doctor-6"),
    Doctor(name: "Kevin", specialty: "Cardiología", photo: "Doctor-7"),
    Doctor(name: "Veronica", specialty: "Cirujia", photo: "Doctor-8")

]
