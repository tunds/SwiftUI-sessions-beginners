//
//  PromoItemView.swift
//  PromoItemView
//
//  Created by Tunde on 29/07/2021.
//

import SwiftUI

struct PromoItemView: View {
    
    let item: PromoItem
    
    private let cornerRadius: CGFloat = 12
    
    var body: some View {
        
        HStack(alignment: .top) {
            VStack {
                Text(item.emoji)
                    .padding(16)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            }
            
            VStack(alignment: .leading,
                   spacing: 8) {
                Text(item.title)
                    .font(.headline)
                Text(item.desc)
                    .font(.footnote)
                    .foregroundColor(item.textColor.opacity(0.7))
            }
        }
        .padding()
        .background(item.background)
        .foregroundColor(item.textColor)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius)) 
    }
}

struct PromoItemView_Previews: PreviewProvider {
    static var previews: some View {
        PromoItemView(item: PromoItem.preview)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black.opacity(0.7))
    }
}
