//
//  AppointmentScreen.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 25/02/2025.
//

import SwiftUI

struct AppointmentScreen: View {
    // MARK: - PROPERTIES
    @State private var selectedDate: Date?
    @State private var animating: Bool = false
    
    let dates: [Date] = {
        let calendar = Calendar.current
        let today = Date()
        return (0..<7).compactMap { calendar.date(byAdding: .day, value: $0, to: today) }
    }()
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            if !animating {
                Text("selecciono mi doctor")
                    .frame(width: 200, height: 200)
                    .transition(.opacity)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(dates, id: \.self) { date in
                        DaysItem(isSelected: selectedDate == date, date: date)
                            .onTapGesture(perform: {
                                selectedDate = date
                            })
                    }//: LOOP
                }
                .padding()
            }//: Scroll H
        }//: Scroll V
        .onAppear(perform: {
            withAnimation (.easeOut(duration: 4)) {
                animating.toggle()
            }
        })
    }//: Scroll V
}

#Preview {
    AppointmentScreen()
}
