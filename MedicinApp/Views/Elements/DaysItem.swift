//
//  DaysItem.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 10/03/2025.
//

import SwiftUI

struct DaysItem: View {
    // MARK: - PROPERTIES
    let isSelected: Bool
    var date: Date
    @State private var day: String = ""
    @State private var dayName: String = ""
    @State private var monthName: String = ""
    
    func getDayAndMonth() {
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "es_ES")
        formatter.dateFormat = "dd"
        day = formatter.string(from: date)
        
        formatter.dateFormat = "MMM"
        monthName = formatter.string(from: date).capitalized
        
        formatter.dateFormat = "E"
        dayName = formatter.string(from: date).capitalized
    }
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 50, weight: .bold, design: .rounded))
            Text(monthName)
                .font(.footnote)
            Text(dayName)
                .font(.headline)
        }
        .shadow(radius: 2)
        .fontDesign(.rounded)
        .padding(.vertical, 20)
        .padding(.horizontal, 12)
        .fontDesign(.rounded)
        .background(isSelected ? .teal : Color.white)
        .foregroundStyle(isSelected ? .white : .black)
        .clipShape(Capsule())
        .shadow(radius: 2)
        
        .onAppear() {
            getDayAndMonth()
        }
    }
}

#Preview {
    HStack{
        DaysItem(isSelected: false, date: Date(timeIntervalSince1970: 1_700_000_000))
            .padding()
        DaysItem(isSelected: true, date: Date(timeIntervalSince1970: 1_700_000_000))
            .padding()
        DaysItem(isSelected: false, date: Date(timeIntervalSince1970: 1_700_000_000))
            .padding()

    }
    .background(Color("BackgroundColor"))
    .ignoresSafeArea()
    
}
