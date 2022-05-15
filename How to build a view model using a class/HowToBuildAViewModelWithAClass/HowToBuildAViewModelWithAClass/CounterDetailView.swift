//
//  CounterDetailView.swift
//  HowToBuildAViewModelWithAClass
//
//  Created by Tunde Adegoroye on 12/04/2022.
//

import SwiftUI

struct CounterDetailView: View {
    
    @EnvironmentObject var vm: CounterViewModel
    
    var body: some View {
        VStack {
            Text("\(vm.val)")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .padding()
            Text("Number of taps")
        }
    }
}

struct CounterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CounterDetailView()
            .environmentObject(CounterViewModel())
    }
}
