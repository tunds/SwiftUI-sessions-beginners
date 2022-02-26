//
//  ScreenTwo.swift
//  TabViewInSwiftUI
//
//  Created by Tunde Adegoroye on 02/02/2022.
//

import SwiftUI

struct ScreenTwo: View {
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ZStack {
            VStack {
                
                Text("Screen 2")
                    .bold()
                    .foregroundColor(.white)
                
                Button {
                    router.change(to: .one)
                } label: {
                    Text("Switch to screen 1")
                }

            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(.pink)
        .clipped()
    }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
            .environmentObject(TabRouter())
    }
}
