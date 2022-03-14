//
//  CustomLoadingView.swift
//  PassingDataBetweenViewsWithBinding
//
//  Created by Tunde on 14/01/2022.
//

import SwiftUI

struct CustomLoadingView: View {
    
    @Binding var isLoading: Bool
    
    var body: some View {
        if isLoading {
            ProgressView()
        } else {
            Text("No content to load")
        }
    }
}

struct CustomLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomLoadingView(isLoading: .constant(true))
            CustomLoadingView(isLoading: .constant(false))
        }
    }
}
