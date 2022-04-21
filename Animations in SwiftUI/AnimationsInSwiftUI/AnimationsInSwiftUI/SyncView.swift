//
//  SyncView.swift
//  AnimationsInSwiftUI
//
//  Created by Tunde Adegoroye on 15/03/2022.
//

import SwiftUI

struct SyncView: View {
    
    @State private var isSyncing: Bool = false
    
    private var rotationAnimation: Animation {
        .easeInOut(duration: 1)
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "arrow.2.circlepath")
                .symbolVariant(.circle.fill)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .rotationEffect(.init(degrees: isSyncing ? 360 : 0))
                .animation(rotationAnimation, value: isSyncing)
        }
        .onAppear {
            isSyncing = true
        }
    }
}

struct SyncView_Previews: PreviewProvider {
    static var previews: some View {
        SyncView()
    }
}
