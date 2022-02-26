//
//  ContentView.swift
//  SpacerInSwiftUI
//
//  Created by Tunde Adegoroye on 28/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                Spacer()
                Text("Name:")
                    .bold()
                Text("tundsdev")
            }
            .background(.red)
            
            HStack {
                Text("Name:")
                    .bold()
                Text("tundsdev")
                Spacer()
            }
            .background(.mint)
            
            HStack {
                Text("Name:")
                    .bold()
                Text("tundsdev")
            }
            .frame(maxWidth: .infinity,
               alignment: .trailing)
            .background(.green)
            
            
            HStack {
                Text("Name:")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .background(.gray)
                Spacer()
                Text("tundsdev")
                    .frame(maxWidth: .infinity)
                    .background(.indigo)
            }
            .background(.yellow)
            
            HStack {
                Text("Name:")
                    .bold()
                    .background(.orange)
                Spacer(minLength: 50)
                Text("tundsdev")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.pink)
            }
            .background(.teal)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
