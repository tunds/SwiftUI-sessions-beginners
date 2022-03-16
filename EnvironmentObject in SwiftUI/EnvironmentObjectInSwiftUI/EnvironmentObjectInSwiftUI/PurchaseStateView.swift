//
//  PurchaseStateView.swift
//  EnvironmentObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

struct PurchaseStateView: View {
    
    @EnvironmentObject var purchaseVm: PurchaseViewModel

    var body: some View {
        PurchaseStatusView()
    }
}

struct PurchaseStateView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStateView()
    }
}
