//
//  ContentView.swift
//  MenuInSwiftUI
//
//  Created by Tunde Adegoroye on 29/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
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
            }
            
            
            Menu {
                
                Button(role: .destructive) {
                    print("Perform Delete")
                } label: {
                    Label("Delete", systemImage: "trash")
                }
                
                Button {
                    print("Perform Add new")
                } label: {
                    Label("Add new item", systemImage: "plus.app")
                }
                
                Button {
                    print("Perform edit item")
                } label: {
                    Label("Edit item", systemImage: "square.and.pencil")
                }
                
                
                Button {
                    print("Perform duplicate item")
                } label: {
                    Label("Duplicate item", systemImage: "doc.on.doc")
                }

            } label: {
                Label("Actions Example 2", systemImage: "ellipsis")
            }
            
            Menu {
                
                Button(role: .destructive) {
                    print("Perform Delete")
                } label: {
                    Label("Delete", systemImage: "trash")
                }
                
                Button {
                    print("Perform Add new")
                } label: {
                    Label("Add new item", systemImage: "plus.app")
                }
                
                Button {
                    print("Perform edit item")
                } label: {
                    Label("Edit item", systemImage: "square.and.pencil")
                }
                
                
                Button {
                    print("Perform duplicate item")
                } label: {
                    Label("Duplicate item", systemImage: "doc.on.doc")
                }

                Menu {
                    
                    Button {
                        print("Share")
                    } label: {
                        Label("Share item", systemImage: "square.and.arrow.up")
                    }
                    
                    
                    Button {
                        print("Perform print item")
                    } label: {
                        Label("Print item", systemImage: "printer")
                    }
                    
                } label: {
                    Label("More", systemImage: "ellipsis")

                }

                
            } label: {
                Label("Actions Example 3", systemImage: "ellipsis")
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
            .menuStyle(.button)


        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
