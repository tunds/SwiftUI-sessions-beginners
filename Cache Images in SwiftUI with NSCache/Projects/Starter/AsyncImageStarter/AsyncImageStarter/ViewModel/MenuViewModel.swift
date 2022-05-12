//
//  MenuViewModel.swift
//  MenuViewModel
//
//  Created by Tunde on 29/07/2021.
//

import Foundation

final class MenuViewModel: ObservableObject {
    
    let data: [FoodItem] = [

        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/600px-RedDot_Burger.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Beef Burger Meal",
                 price: 2.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hot_dog_with_mustard.png/1600px-Hot_dog_with_mustard.png",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Hot Dog Meal",
                 price: 1.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/1597px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Taco Meal",
                 price: 3.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Basic_burrito.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Burrito Meal",
                 price: 5.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/600px-RedDot_Burger.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Beef Burger Meal",
                 price: 2.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hot_dog_with_mustard.png/1600px-Hot_dog_with_mustard.png",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Hot Dog Meal",
                 price: 1.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/1597px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Taco Meal",
                 price: 3.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Basic_burrito.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Burrito Meal",
                 price: 5.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/600px-RedDot_Burger.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Beef Burger Meal",
                 price: 2.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hot_dog_with_mustard.png/1600px-Hot_dog_with_mustard.png",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Hot Dog Meal",
                 price: 1.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/1597px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Taco Meal",
                 price: 3.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Basic_burrito.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Burrito Meal",
                 price: 5.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/600px-RedDot_Burger.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Beef Burger Meal",
                 price: 2.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hot_dog_with_mustard.png/1600px-Hot_dog_with_mustard.png",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Hot Dog Meal",
                 price: 1.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/1597px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Taco Meal",
                 price: 3.99),
        FoodItem(imgUrl: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Basic_burrito.jpg",
                 desc: "Bacon ipsum dolor amet pig venison ribeye chuck. Chislic turducken rump pancetta. Tri-tip shoulder ball tip, jerky andouille strip steak pancetta pork fatback ham buffalo. Brisket jowl t-bone shank buffalo. ",
                 title: "Burrito Meal",
                 price: 5.99)
    ]
}
