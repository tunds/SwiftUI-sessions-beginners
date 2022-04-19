//
//  FlavoursView.swift
//  PickerInSwiftUI
//
//  Created by Tunde Adegoroye on 08/02/2022.
//

import SwiftUI

struct Flavour: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: Decimal
}

extension Flavour {
    static let none: Flavour = .init(name: "", price: 0)
}

struct FlavoursView: View {
    
    @State private var selectedFlavour: Flavour = .none
    
    let flavours: [Flavour] = [
        .init(name: "Mint", price: 1.00),
        .init(name: "Vanilla", price: 2.00),
        .init(name: "Coffee", price: 3.00)
    ]
    
    var body: some View {
            VStack {
                Text("Selected Flavour \(selectedFlavour.name)")

                Picker("Choose a name",
                       selection: $selectedFlavour) {
                    ForEach(flavours) { item in
                        HStack {
                            Text(item.name)
                            Text(item.price, format: .currency(code: "GBP"))
                        }
                        .tag(item)
                    }
                }
                .pickerStyle(.wheel)
            }
    }
}

struct FlavoursView_Previews: PreviewProvider {
    static var previews: some View {
        FlavoursView()
    }
}
