//
//  FoodItem.swift
//  FoodItem
//
//  Created by Tunde on 29/07/2021.
//

import Foundation

struct FoodItem: Identifiable {
    
    let id = UUID()
    let emoji: String
    let desc: String
    let title: String
    let price: Decimal
    
    var attributedPrice: AttributedString {
        
        let priceString = "Price:"
        let formattedPrice = formattedPrice
        
        var string = AttributedString("\(priceString) \(formattedPrice)")
        string.foregroundColor = .black
        string.font = .system(size: 16, weight: .regular)

        if let range = string.range(of: formattedPrice) {
            string[range].font = .system(size: 16, weight: .bold)
        }
        
        return string
    }
    
    private var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: price as NSDecimalNumber)!
    }
}

extension FoodItem {
    
    static var preview: FoodItem {
        FoodItem(emoji: "🍔",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Beef Burger Meal",
                 price: 2.99)
    }
}

