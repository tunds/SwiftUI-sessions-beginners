//
//  FakeRequestView.swift
//  AlertsInSwiftUI
//
//  Created by Tunde Adegoroye on 23/03/2022.
//

import SwiftUI

struct FakeRequestView: View {
    
    @StateObject var manager = NetworkManager()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear(perform: manager.fetch)
            .alert(isPresented: $manager.hasError,
                   error: manager.error) { error in
                
                Button(role: .cancel) {
                    
                } label: {
                    Text("Cancel")
                }

                
                Button(action: manager.fetch) {
                    Text(error.suggestion)
                }
                
            } message: { error in
                
                Text(error.message)
            }

    }
}

struct FakeRequestView_Previews: PreviewProvider {
    static var previews: some View {
        FakeRequestView()
    }
}
