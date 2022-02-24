//
//  ContentView.swift
//  GradientsInSwiftUI
//
//  Created by Tunde on 05/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]),
//                       startPoint: .top,
//                       endPoint: .bottom)
//            .ignoresSafeArea()
        
//        LinearGradient(gradient: Gradient(colors: [.white, .mint]),
//                       startPoint: .leading,
//                       endPoint: .trailing)
//            .ignoresSafeArea()
        
//        LinearGradient(stops: ([.init(color: .black,
//                                       location: 0.2),
//                                 .init(color: .mint,
//                                       location: 0.5)]),
//                       startPoint: .top,
//                       endPoint: .bottom)
//            .ignoresSafeArea()
        
//        RadialGradient(colors: [.black, .mint, .purple, .blue],
//                       center: .top,
//                       startRadius: 50,
//                       endRadius: 100)
//            .frame(width: 200, height: 200)
//
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple],
//                        center: .center,
//                        angle: .degrees(180))
//            .frame(width: 200, height: 200)
        
//        Text("I'm a gradient")
//            .bold()
//            .foregroundColor(.white)
//            .background(
//                AngularGradient(colors: [.red, .yellow, .green, .blue, .purple],
//                                center: .center,
//                                angle: .degrees(180))
//                    .frame(width: 200, height: 200)
//            )
        
        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple],
                        center: .center,
                        angle: .degrees(180))
            .mask(
                Text("I'm a gradient")
                    .bold()
            )
                
                    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
