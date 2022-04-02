//
//  EmptyView.swift
//  EmptyView
//
//  Created by Tunde on 18/09/2021.
//

import SwiftUI

struct EmptyView: View {
    
    @Binding var query: String
    
    var body: some View {
        Text("We couldn't find: \(query)")
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView(query: .constant("HDFDSF"))
    }
}
