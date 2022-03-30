//
//  ContentView.swift
//  ButtonsStylesInSwiftUI
//
//  Created by Tunde Adegoroye on 04/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                
                Button("Subscribe to the channel") { }
                .padding()
                .background(.red)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Button("Subscribe to the channel") { }
                .tint(.red)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
            }
            
            VStack(spacing: 16) {
                
                Text("Button Style Examples")
                    .bold()
                
                Button("Button Style Example") { }
                .tint(.mint)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.mint)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.mint)
                .buttonStyle(.borderless)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.mint)
                .buttonStyle(.plain)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.mint)
                .buttonStyle(.automatic)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
            }
            
            VStack(spacing: 16) {
                
                Text("Button Border Shape Examples")
                    .bold()
                
                Button("Button Style Example") { }
                .tint(.teal)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 12))
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.teal)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.teal)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                
                Button("Button Style Example") { }
                .tint(.teal)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
                
                
            }
            
            VStack(spacing: 16) {
                
                Text("Button Control Size Examples")
                    .bold()
                
                Button("Button Style Example") { }
                .tint(.pink)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.mini)
                
                Button("Button Style Example") { }
                .tint(.pink)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.small)
                
                Button("Button Style Example") { }
                .tint(.pink)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
                
                Button("Button Style Example") { }
                .tint(.pink)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
            }
            
            
            VStack(spacing: 16) {
                
                Text("Button Role & Style Examples")
                    .bold()
                
                Button(role: .destructive) {
                    
                } label: {
                    Text("Delete")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button(role: .destructive) {
                    
                } label: {
                    Text("Delete")
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                
                Button(role: .cancel) {
                    
                } label: {
                    Text("Cancel")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button(role: .cancel) {
                    
                } label: {
                    Text("Cancel")
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
            }
            
            VStack(spacing: 24) {
                
                Text("Material Examples")
                
                Button("Material Example") { }
                .padding()
                .background(.ultraThinMaterial)
                .controlSize(.large)
                
                Button("Material Example") { }
                .padding()
                .background(.thinMaterial,
                            in: Capsule())
                .controlSize(.large)
                
                Button("Material Example") { }
                .padding()
                .background(.regularMaterial,
                            in: RoundedRectangle(cornerRadius: 8))
                .controlSize(.large)
                
                Button("Material Example") { }
                .padding()
                .background(.thickMaterial,
                            in: RoundedRectangle(cornerRadius: 8))
                .controlSize(.large)
                
                Button("Material Example") { }
                .padding()
                .background(.ultraThickMaterial,
                            in: RoundedRectangle(cornerRadius: 8))
                .controlSize(.large)
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.mint)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
