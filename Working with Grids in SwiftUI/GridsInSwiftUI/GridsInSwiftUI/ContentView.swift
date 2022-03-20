//
//  ContentView.swift
//  GridsInSwiftUI
//
//  Created by Tunde Adegoroye on 14/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    private let items = (1...50).map { "Item \($0)" }

    private let columns: [GridItem] = [
//        GridItem(.flexible(minimum: 20, maximum: 60)),
//        GridItem(.flexible()),
        
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
//        GridItem(.fixed(50))
        
//        GridItem(.adaptive(minimum: 50, maximum: 100)),
//        GridItem(.adaptive(minimum: 100, maximum: 150))

    ]
    
    var body: some View {
        hGridExample
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    var hGridExample: some View {
        
        ScrollView(.horizontal) {
            
            LazyHGrid(
                rows: columns,
                alignment: .top,
                spacing: 32,
                pinnedViews: .sectionHeaders
                    ) {
                
                        Section {
                            ForEach(items, id: \.self) { item in
                                Text(item)
                                    .background(.blue,
                                                in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                                    
                            }
                        } header: {
                            Text("First Section")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.mint)
                        }

                        Section {
                            ForEach(items, id: \.self) { item in
                                Text(item)
                                    .background(.red,
                                                in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                                    
                            }
                        } header: {
                            Text("Second Section")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.pink)
                        }
                        

                
            }
            
        }

    }
}


private extension ContentView {
    
    var vGridExample: some View {
        
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .trailing,
                spacing: 32,
                pinnedViews: .sectionHeaders
                    ) {
                
                        Section {
                            ForEach(items, id: \.self) { item in
                                Text(item)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 50)
                                    .background(.blue,
                                                in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                                    
                            }
                        } header: {
                            Text("First Section")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.mint)
                        }

                        Section {
                            ForEach(items, id: \.self) { item in
                                Text(item)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 50)
                                    .background(.red,
                                                in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                                    
                            }
                        } header: {
                            Text("Second Section")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.pink)
                        }
                        

                
            }
            
        }

    }
}
