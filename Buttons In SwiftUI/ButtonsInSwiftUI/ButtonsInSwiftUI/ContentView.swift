//
//  ContentView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var exampleOneCounter: Int = 0
    @State private var exampleTwoCounter: Int = 0
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 32) {
                
                VStack {
                    Text("Number of times pressed: \(exampleOneCounter)")
                    Button {
                        exampleOneCounter += 1
                    } label: {
                        Text("Example 1 Increase")
                    }
                }
                
                VStack {
                    Text("Number of times pressed: \(exampleTwoCounter)")
                    Button(action: increaseCounterTwo) {
                        Text("Example 2 Increase")
                    }
                }
                
                Group {
                    
                    Button(role: .cancel) {
                        
                    } label: {
                        Text("Cancel Example Role")
                    }
                    
                    Button(role: .destructive) {
                        
                    } label: {
                        Text("Destructive Role")
                    }
                    
                    Button(role: .none) {
                        
                    } label: {
                        Text("Default Role")
                    }
                    
                }
                
                
                Button {
                    print("Hey i've been pressed")
                } label: {
                    Text("Press Me")
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .background(.red)
                        .tint(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                
                Button {
                    
                } label: {
                    Text("Send Mail")
                }
                .buttonStyle(SendButtonStyle())
                
                Button {
                    
                } label: {
                    Text("Send Mail")
                }
                .buttonStyle(.send)
                
                SendButton {
                 print("Heyyy it works!!!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    func increaseCounterTwo() {
        exampleTwoCounter += 1
    }
}
