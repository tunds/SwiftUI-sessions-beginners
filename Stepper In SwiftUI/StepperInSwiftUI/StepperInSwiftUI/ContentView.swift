//
//  ContentView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

struct ContentView: View {

    @State private var quantityExampleOne: Int = 0
    @State private var quantityExampleTwo: Int = 0
    @State private var quantityExampleThree: Int = 0
    @State private var quantityExampleFour: Int = 0
    @State private var quantityExampleFive: Int = 0

    private let step: Int = 1
    private let range: ClosedRange<Int> = 0...20
    
    var body: some View {
        VStack {
            
            VStack {
                Text("The user selected a quantity of \(quantityExampleOne)")
                Stepper("Quantity",
                        value: $quantityExampleOne,
                        in: range,
                        step: step)
            }
            
            VStack {
                Text("The user selected a quantity of \(quantityExampleTwo)")
                Stepper("",
                        value: $quantityExampleTwo,
                        in: range,
                        step: step)
                    .labelsHidden()
            }
            
            VStack {
                
                Stepper(value: $quantityExampleThree,
                        in: range,
                        step: step) {
                    Text("🍕 Slices \(quantityExampleThree)")
                }
            }
            
            VStack {
                
                Stepper(value: $quantityExampleFour,
                        in: range,
                        step: step) {
                    Text("🍔 Burgers \(quantityExampleFour)")
                } onEditingChanged: { editingStarted in
                    print("The value changed \(editingStarted) the current quantity is \(quantityExampleFour)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
