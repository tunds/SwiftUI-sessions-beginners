//
//  PromosView.swift
//  PromosView
//
//  Created by Tunde on 29/07/2021.
//

import SwiftUI

struct PromosView: View {
        
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        List {
            Group {

                Button("Clear Search") {
                    // TODO: Dismss action here
                }
                    
                Text("Check out our latest promos")
                    .font(.largeTitle)

                ForEach(vm.promos) { item in
                    
                    PromoItemView(item: item)
                }
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)

        }
        .listStyle(.grouped)
        
    }
}

struct PromosView_Previews: PreviewProvider {
    static var previews: some View {
        PromosView(vm: MenuViewModel())
    }
}
