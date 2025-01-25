//
//  DoctorInfoBottomView.swift
//  MedicinApp
//
//  Created by Mateo Andres Perano on 01/10/2024.
//

import SwiftUI

struct DoctorInfoBottomView: View {
    
    private let Days: [String] = ["Lu", "Ma", "Mi", "Ju", "Vi", "Sa"]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {

            VStack(alignment: .leading, spacing: 3) {
                Text("Dias disponible")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(Days, id: \.self) { day in
                        
                        Text(day)
                            .font(.footnote)
                            .fontWeight(.black)
                            .foregroundStyle(.gray)
                            //.foregroundStyle(.black)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(
                                //Color.green
                                //Color.colorGreen
                                Color.white
                                    .clipShape(RoundedRectangle(cornerRadius: 5)))
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2))
                    }
                    Spacer()
                }
            }//: HSTACK
            
            Text("Formacion Profesional")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.leading)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                Text("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt nibh at ligula rhoncus lacinia. Suspendisse imperdiet metus eu est maximus mollis. Integer ac semper lacus. Suspendisse auctor efficitur nisl, at pharetra diam molestie sed. Nam sit amet dui eget enim faucibus facilisis. Nam et ultricies nulla, eget consectetur justo. Pellentesque ut quam ut diam sollicitudin luctus ac ac lectus. Cras in facilisis tellus, efficitur tempus lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla facilisi. Phasellus non elit ut massa laoreet cursus. Quisque est eros, ullamcorper nec volutpat ac, tempor vitae justo. Sed risus leo, elementum nec commodo in, volutpat id velit. Aliquam malesuada elit sem, sit amet finibus nulla vestibulum vel.

Nullam ante lacus, tempor placerat suscipit id, ultricies quis ante. Nulla facilisi. Nam congue leo eget pulvinar commodo. Duis lobortis ut augue at sodales. Proin volutpat egestas tortor eget pretium. Nunc posuere magna id metus molestie dictum. Vestibulum enim justo, consectetur et justo in, tempus interdum ipsum. Quisque vitae eros scelerisque justo volutpat porttitor consequat vel nunc. Sed sed dolor pulvinar, pretium arcu sed, interdum ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean auctor.
""")
                .font(.system(.body, design: .rounded))
                .foregroundStyle(.gray)
                .multilineTextAlignment(.leading)
            }//: SCROLL
        }//: VSTACK
        .padding(.horizontal, 40)
        .padding(.top, 45)

    }
}

#Preview {
    DoctorInfoBottomView()
}
