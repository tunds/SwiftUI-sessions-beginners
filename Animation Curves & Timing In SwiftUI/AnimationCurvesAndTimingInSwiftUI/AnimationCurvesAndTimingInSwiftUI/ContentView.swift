//
//  ContentView.swift
//  AnimationCurvesAndTimingInSwiftUI
//
//  Created by Tunde Adegoroye on 15/03/2022.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible()), count: 3),
                spacing: 16) {
                
                    ForEach(AnimationConfig.options) { item in
                        SyncView(config: item)
                            
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
