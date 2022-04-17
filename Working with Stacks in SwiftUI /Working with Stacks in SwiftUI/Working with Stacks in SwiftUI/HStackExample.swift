//
//  HStackExample.swift
//  Working with Stacks in SwiftUI
//
//  Created by Tunde Adegoroye on 03/03/2022.
//

import SwiftUI

struct HStackExample: View {
    var body: some View {
        HStack(spacing: 32) {
            
            Group {
              
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
            }
            
            Group {
                
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
                Text("Item")
            }



//            ForEach(1...10, id: \.self) {
//                Text("Item \($0)")
//                    .fixedSize()
//            }
        }
    }
}

struct HStackExample_Previews: PreviewProvider {
    static var previews: some View {
        HStackExample()
    }
}
