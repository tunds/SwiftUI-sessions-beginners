//
//  AgeView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct AgeView: View {
    @Binding var age: Double
    let action: () -> Void
    var body: some View {
        VStack {
            
            Text("👶")
                .font(.system(size: 100))
            
            Text("Age")
                .font(.system(size: 30,
                              weight: .bold,
                              design: .rounded))
                .foregroundColor(.white)

            
            VStack(spacing: 0) {
                Text("\(Int(age))yr")
                    .font(.system(size: 20,
                                  weight: .regular,
                                  design: .rounded))
                    .foregroundColor(.white)
                Slider(value: $age, in: 18...100, step: 1)
                    .padding()
                    .tint(.white)
            }
         
            
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

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView(age: .constant(18)) {}
            .padding()
            .previewLayout(.sizeThatFits)
            .background(.blue)
    }
}
