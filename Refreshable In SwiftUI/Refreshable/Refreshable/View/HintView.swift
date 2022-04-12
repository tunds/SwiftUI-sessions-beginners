//
//  HintView.swift
//  HintView
//
//  Created by Tunde on 27/07/2021.
//

import SwiftUI

struct HintView: View {
    
    var body: some View {
        
        Text("Pull me down to generate a new person")
            .multilineTextAlignment(.center)
            .allowsTightening(true)
            .font(.system(size: 16, weight: .bold))
            .padding()
    }
}

struct HintView_Previews: PreviewProvider {
    static var previews: some View {
        HintView()
    }
}
