//
//  UsernameView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct UsernameView: View {
    
    @Binding var text: String
    let action: () -> Void
    var body: some View {
        VStack {
            
            Text("👥")
                .font(.system(size: 100))
            
            Text("Username")
                .font(.system(size: 30,
                              weight: .bold,
                              design: .rounded))
                .foregroundColor(.white)

            TextField("Please enter a username", text: $text)
                .padding()
                .frame(width: 350, height: 50)
                .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                         style: .continuous))
                .font(.system(size: 13, weight: .bold, design: .rounded))
                .padding(.bottom, 8)
            
            Button("Next") {
                action()
            }
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .padding(.horizontal, 60)
            .padding(.vertical, 15)
            .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                     style: .continuous))
            .padding(.top, 40)

        }
    }
}

struct UsernameView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameView(text: .constant("")) {}
            .padding()
            .previewLayout(.sizeThatFits)
            .background(.blue)
    }
}
