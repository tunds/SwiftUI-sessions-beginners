//
//  Color+Collection.swift
//  Color+Collection
//
//  Created by Tunde on 29/07/2021.
//

import SwiftUI

extension Color {
    
    static var random: Color {
        
        let possibleColors: [Color] = [
            .red,
            .orange,
            .yellow,
            .green,
            .mint,
            .teal,
            .cyan,
            .blue,
            .indigo,
            .purple,
            .pink,
            .brown,
            .gray,
            .black,
            .primary,
            .secondary
        ]
    
        return possibleColors.randomElement()!
    }
}
