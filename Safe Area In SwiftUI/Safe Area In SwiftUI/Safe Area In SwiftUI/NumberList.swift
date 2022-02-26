//
//  NumberList.swift
//  Safe Area In SwiftUI
//
//  Created by Tunde Adegoroye on 10/02/2022.
//

import SwiftUI

struct NumberList: View {
    var body: some View {
        NavigationView {
            
            List(0..<20) { i in
                Text("Number \(i)")
            }
            .navigationTitle("Numbers")
            .safeAreaInset(edge: .bottom,
                           alignment: .trailing,
                           spacing: 0) {
                plusBtn
            }
            .safeAreaInset(edge: .leading,
                           alignment: .top,
                           spacing: 0) {
                sideBar
            }
        }
    }
}

struct NumberList_Previews: PreviewProvider {
    static var previews: some View {
        NumberList()
    }
}

private extension NumberList {
    
    var plusBtn: some View {
        Button {
         // Add something
        } label: {
            Image(systemName: "plus")
                .symbolVariant(.circle.fill)
                .font(.system(size: 44,
                              weight: .bold,
                              design: .rounded))
                .padding(.trailing, 4)
        }
    }
    
    var sideBar: some View {
        
        VStack(alignment: .leading) {
            ForEach([
                "Home",
                "Features",
                "My Profile",
                "Settings"
            ], id: \.self) { item in
                Text("\(item)")
                    .bold()
                    .padding()
            }
        }
    }
}
