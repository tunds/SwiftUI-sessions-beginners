//
//  MenuViewModel.swift
//  MenuViewModel
//
//  Created by Tunde on 29/07/2021.
//

import Foundation

final class MenuViewModel: ObservableObject {
    
    private let data: [FoodItem] = [

        FoodItem(emoji: "🍔",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Beef Burger Meal",
                 price: 2.99),
        FoodItem(emoji: "🌭",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Hot Dog Meal",
                 price: 1.99),
        FoodItem(emoji: "🌮",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Taco Meal",
                 price: 3.99),
        FoodItem(emoji: "🌯",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Burrito Meal",
                 price: 5.99),
        FoodItem(emoji: "🥙",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Open Taco Meal",
                 price: 2.45),
        FoodItem(emoji: "🥗",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Salad",
                 price: 1.99),
        FoodItem(emoji: "🥪",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Cheese Sandwhich",
                 price: 2.99),
        FoodItem(emoji: "🍕",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Slice of pizza",
                 price: 0.99),
        FoodItem(emoji: "🍟",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Chips",
                 price: 0.99),
        FoodItem(emoji: "🍖",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Ham",
                 price: 12.99),
        FoodItem(emoji: "🍗",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Chicken Meal",
                 price: 3.45)
    ]
    
    private(set) var promos: [PromoItem] = [
        PromoItem(emoji: "🍣",
                  title: "Sushi 2-4-1", desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 background: .yellow,
                  textColor: .black),
        PromoItem(emoji: "🍜",
                  title: "50% of all Ramen", desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 background: .mint,
                  textColor: .white)
    ]
    
    @Published var filteredData = [FoodItem]()
    
    func search(with query: String = "") {
        self.filteredData = query.isEmpty ? data : data.filter { $0.title.contains(query) }
    }
}
