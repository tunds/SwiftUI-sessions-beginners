//
//  ZStackExample.swift
//  Working with Stacks in SwiftUI
//
//  Created by Tunde Adegoroye on 03/03/2022.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        ZStack(alignment: .center) {
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .symbolVariant(.fill)
                .foregroundStyle(.yellow)
            //    .zIndex(-2)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                //  .zIndex(-1)
        }
    }
}

struct ZStackExample_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExample()
    }
}
