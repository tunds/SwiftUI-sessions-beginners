//
//  VStackExample.swift
//  Working with Stacks in SwiftUI
//
//  Created by Tunde Adegoroye on 03/03/2022.
//

import SwiftUI

struct VStackExample: View {
    var body: some View {
        VStack(alignment: .leading,
               spacing: 32) {
            ForEach(1...10, id: \.self) {
                Text("Item \($0)")
            }
        }
    }
}

struct VStackExample_Previews: PreviewProvider {
    static var previews: some View {
        VStackExample()
    }
}
