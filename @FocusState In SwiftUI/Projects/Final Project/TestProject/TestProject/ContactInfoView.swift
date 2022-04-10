//
//  ContactInfoView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import SwiftUI

struct ContactInfoView: View {
    
    @State private var showEmergencyInfo: Bool = false
    let item: NewContact
    
    var body: some View {
        VStack(alignment: .leading,
               spacing: 16) {
            Text("\(item.general.prefix). \(item.general.firstName) \(item.general.lastName)")
                .font(.title3)
                .bold()
            Text("**Gender**: \(item.general.gender.rawValue.uppercased())")
            Text("**Company**: \(item.general.company)")
            
            
            Divider()
            
            Text("**Phone**: \(item.contactInfo.phoneNumber)")
            Text("**Email**: \(item.contactInfo.email)")
            
            if item.emergency.isEmergency {
                
                Divider()
                
                HStack {
                    Group {
                        Image(systemName: "exclamationmark.octagon")
                            .symbolVariant(.fill)
                            .font(.title)
                        Text("Emergency Contact")
                            .font(.title2)
                            .bold()
                    }
                    .foregroundStyle(.red)
                    
                    Spacer()
                    
                    Button {
                        withAnimation {
                            showEmergencyInfo.toggle()
                        }
                    } label: {
                        Image(systemName: showEmergencyInfo ? "chevron.up" : "chevron.down")
                            .symbolVariant(.circle.fill)
                    }
                    .font(.title)
                    .foregroundStyle(.gray.opacity(0.5))
                    
                }
                
                if showEmergencyInfo {
                    Text(item.emergency.notes)
                }
            }

        }
               .padding()
               .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 12,
                                                                    style: .continuous))
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(item: .empty)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.white)
    }
}
