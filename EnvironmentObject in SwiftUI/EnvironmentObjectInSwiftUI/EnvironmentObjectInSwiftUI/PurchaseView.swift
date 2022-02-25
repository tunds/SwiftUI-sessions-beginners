//
//  PurchaseView.swift
//  EnvironmentObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

struct PurchaseView: View {
    
    @EnvironmentObject var purchaseVm: PurchaseViewModel
    
    var body: some View {
        if purchaseVm.isLoading {
            ProgressView()
        } else {
            Button {
                purchaseVm.purchase()
            } label: {
                Text("Purchase")
            }
            .disabled(purchaseVm.hasPurchased)
            .opacity(purchaseVm.hasPurchased ? 0.5 : 1)
        }
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
