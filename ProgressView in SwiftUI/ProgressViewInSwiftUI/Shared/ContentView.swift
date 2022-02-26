//
//  ContentView.swift
//  Shared
//
//  Created by Tunde Adegoroye on 27/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progressSecondExample: Double = 0
    @State private var progressThirdExample: Double = 0

    var body: some View {
        VStack(spacing: 24) {
            Group {
                ProgressView()
                Text("Example 1")
                    .padding()
            }
            
            Group {
                ProgressView(value: progressSecondExample)
                Button("Increase Example 2") {
                    withAnimation {
                        progressSecondExample += 0.1
                    }
                }
            }
            
            Group {
                ProgressView(value: progressThirdExample, total: 100)
                Button("Increase Example 3") {
                    withAnimation {
                        progressThirdExample += 10
                    }
                }
            }
            
            Group {
                ProgressView(value: progressThirdExample,
                             total: 100) {
                    Label("Upload Progress \(progressThirdExample)",
                          systemImage: "arrow.counterclockwise.icloud")
                        .frame(maxWidth: .infinity, alignment: .center)
                }

                Button("Increase Example 4") {
                    withAnimation {
                        progressThirdExample += 10
                    }
                }
            }
            
            Group {
                ProgressView() {
                    Label("Fetching some content",
                          systemImage: "face.smiling")
                }
                Text("Example 5")
                    .padding()
            }
            
            Group {
                ProgressView()
                    .progressViewStyle(RoundedProgressViewStyle(color: .gray))
                    .tint(.blue)
                Text("Example 5")
                    .padding()
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
