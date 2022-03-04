//
//  ContentView.swift
//  SFSymbolsInSwiftUI
//
//  Created by Tunde on 03/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            
            Image(systemName: "cloud.sun")
                  .font(.system(size: 50,
                                weight: .bold))
                  .foregroundColor(.blue)
                  .symbolVariant(.fill)
            
            Divider()
            
            VStack {
                Label("Cloudy", systemImage: "cloud.sun")
                    .imageScale(.small)
                
                Label("Cloudy", systemImage: "cloud.sun")
                    .imageScale(.medium)
                
                Label("Cloudy", systemImage: "cloud.sun")
                    .imageScale(.large)
            }
            .font(.system(size: 20, weight: .bold))
            .symbolVariant(.fill)
            
            Divider()
            
            VStack {
                Image(systemName: "cloud.sun")
                    .symbolRenderingMode(.monochrome)
                    .foregroundColor(.red)
                
                Image(systemName: "cloud.sun")
                    .symbolRenderingMode(.multicolor)
                
                Image(systemName: "cloud.sun")
                    .symbolRenderingMode(.hierarchical)
                
                Image(systemName: "cloud.sun")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.red, .blue)
            }
            .padding()
            .background(.mint)
            .font(.system(size: 20, weight: .bold))
        .symbolVariant(.fill)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
