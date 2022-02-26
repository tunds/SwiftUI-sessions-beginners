//
//  ContentView.swift
//  ControlGroup In SwiftUI
//
//  Created by Tunde Adegoroye on 09/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            VStack {
             
                VStack {
                    Text("Quantity")
                    ControlGroup {
                        increaseBtn
                        decreaseBtn
                    }
                }
                
                VStack {
                    Text("Quantity")
                    ControlGroup {
                        increaseBtn
                        decreaseBtn
                    }
                    .controlGroupStyle(.navigation)
                }
                
                ControlGroup {
                    increaseBtn
                    decreaseBtn
                }
                .controlGroupStyle(.quantity)
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    private var increaseBtn: some View {
        Button {
            
        } label: {
            Label("Increase", systemImage: "plus")
        }
    }
    
    private var decreaseBtn: some View {
        Button {
            
        } label: {
            Label("Decrease", systemImage: "minus")
        }
    }
}
