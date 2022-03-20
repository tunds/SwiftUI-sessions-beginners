//
//  LayoutUIExample.swift
//  GridsInSwiftUI
//
//  Created by Tunde Adegoroye on 14/03/2022.
//

import SwiftUI

struct LayoutUIExample: View {
    
    @State private var isMultiColumn: Bool = false
    
    private var columns: [GridItem] {
        Array(repeating: GridItem(.flexible()), count: isMultiColumn ? 2 : 1)
    }
    
    var body: some View {
        
        ScrollView {
            
            Button {
                isMultiColumn.toggle()
            } label: {
                Image(systemName: isMultiColumn ? "rectangle.grid.1x2" : "square.grid.2x2")
                    .symbolVariant(.fill)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
            
            LazyVGrid(columns: columns,
                      alignment: .trailing,
                      spacing: 16) {
                
                ForEach(0...50, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(.mint)
                        .frame(height: isMultiColumn ? 100 : 250)
                    
                }
                
            }
            .animation(.spring(), value: isMultiColumn)
            .padding(.horizontal, 8)
        }
    }
}

struct LayoutUIExample_Previews: PreviewProvider {
    static var previews: some View {
        LayoutUIExample()
    }
}


