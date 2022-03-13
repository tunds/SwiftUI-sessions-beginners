//
//  ContentView.swift
//  LazyStacksInSwiftUI
//
//  Created by Tunde Adegoroye on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top,
                       spacing: 32,
                       pinnedViews: .sectionFooters) {
                
                
                Section {
                    ForEach(0...50, id: \.self) { i in
                        Text("\(i)")
                    }
                } footer: {
                    Text("First Section")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                }

                Section {
                    ForEach(51...100, id: \.self) { i in
                        Text("\(i)")
                    }
                } footer: {
                    Text("Second Section")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
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
