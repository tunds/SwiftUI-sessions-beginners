//
//  PromoItem.swift
//  PromoItem
//
//  Created by Tunde on 29/07/2021.
//

import Foundation
import SwiftUI

struct PromoItem: Identifiable {
    
    let id = UUID()
    let emoji: String
    let title: String
    let desc: String
    let background: Color
    let textColor: Color
}

extension PromoItem {
    
    static var preview: PromoItem {
        PromoItem(emoji: "🍣",
                  title: "Sushi Meal", desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 background: .yellow,
                  textColor: .black)
    }
}
