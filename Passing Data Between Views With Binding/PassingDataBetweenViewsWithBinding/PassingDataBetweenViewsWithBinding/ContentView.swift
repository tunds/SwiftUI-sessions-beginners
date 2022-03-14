//
//  ContentView.swift
//  PassingDataBetweenViewsWithBinding
//
//  Created by Tunde on 14/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack {
            CustomLoadingView(isLoading: $isLoading)
            Button {
                isLoading.toggle()
            } label: {
                Text("\(isLoading ? "Stop" : "Start") Loading")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
