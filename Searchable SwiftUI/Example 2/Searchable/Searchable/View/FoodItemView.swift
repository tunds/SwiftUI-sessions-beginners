//
//  FoodItemView.swift
//  FoodItemView
//
//  Created by Tunde on 29/07/2021.
//

import SwiftUI

struct FoodItemView: View {
    
    let item: FoodItem
    
    private let cornerRadius: CGFloat = 12
    
    var body: some View {
        
        HStack(alignment: .top) {
            VStack {
                Text(item.emoji)
                    .padding(16)
                    .background(Color.random)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            }
            
            VStack(alignment: .leading,
                   spacing: 8) {
                Text(item.title)
                    .font(.headline)
                Text(item.attributedPrice)
                Text(item.desc)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView(item: FoodItem.preview)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black.opacity(0.7))
    }
}
