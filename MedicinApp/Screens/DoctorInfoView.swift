//
//  DoctorInfoView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 01/10/2024.
//

import SwiftUI

struct DoctorInfoView: View {
    var body: some View {
            VStack (spacing: 0) {
                DoctorInfoTopView()
                    .zIndex(0)

                ZStack {
                    Color.colorTealLight
                                DoctorInfoBottomView()
                        .zIndex(1)
                    .background(
                        backgroundColor
                            .clipShape(CustomCompleteTopShape())
                    )
                }//: ZSTACK
            }//: VSTACK
            .navigationTitle("Doctors")
    }//: BODYd
}

#Preview {
    DoctorInfoView()
}
