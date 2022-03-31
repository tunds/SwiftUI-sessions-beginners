//
//  ScreenOne.swift
//  TabViewInSwiftUI
//
//  Created by Tunde Adegoroye on 02/02/2022.
//

import SwiftUI

struct ScreenOne: View {
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Text("Screen 1")
                    .bold()
                    .foregroundColor(.white)
                
                Button {
                    router.change(to: .two)
                } label: {
                    Text("Switch to screen 2")
                }

            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(.mint)
        .clipped()
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne()
            .environmentObject(TabRouter())
    }
}
