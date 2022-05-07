//
//  ContentView.swift
//  MenuVsContextMenuInSwiftUI
//
//  Created by Tunde Adegoroye on 29/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("mountain")
                .resizable()
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 8,
                                            style: .continuous))
                .contextMenu {

                    Button {
                        print("Share")
                    } label: {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                    
                    Button(role: .destructive) {
                        print("Delete")
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            
            Menu("Actions Example 1") {
                Button(role: .destructive) {
                    print("Peform Delete")
                } label: {
                    Text("Delete")
                }
                Button("Add new item") {
                    print("Perform add new")
                }
                Button("Edit item") {
                    print("Perform edit")
                }
                Button("Duplicate") {
                    print("Perform duplicate")
                }
                Menu("Nested Menu") {
                    Button(role: .destructive) {
                        print("Peform Delete")
                    } label: {
                        Text("Favourite")
                    }
                }
            }
            
            Menu {
                Button(role: .destructive) {
                    print("Peform Delete")
                } label: {
                    Text("Delete")
                }
                Button("Add new item") {
                    print("Perform add new")
                }
                Button("Edit item") {
                    print("Perform edit")
                }
                Button("Duplicate") {
                    print("Perform duplicate")
                }
            } label: {
                Text("Actions Example 4")
            } primaryAction: {
                print("Primary Action activated")
            }
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
