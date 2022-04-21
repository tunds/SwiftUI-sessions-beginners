//
//  ContentView.swift
//  HowToBuildAViewModelWithAClass
//
//  Created by Tunde Adegoroye on 12/04/2022.
//

import SwiftUI

struct Counter {
    var val: Int = 0
    
    mutating func increase() {
        val += 1
    }
}

final class CounterViewModel: ObservableObject {
    
    @Published private(set) var val = 0
    
    func increase() {
        val += 1
    }
}

struct ContentView: View {

    @EnvironmentObject var vm: CounterViewModel
    
    var body: some View {
        VStack {
            Text("\(vm.val)")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .padding()
            Button("Increase") {
                vm.increase()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CounterViewModel())
    }
}
