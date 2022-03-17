//
//  LoggedInView.swift
//  StateObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

struct LoggedInView: View {
    
    let didTap: () -> Void
    
    var body: some View {
        
        VStack {
            Text("Hey, you're now logged in")
            Button {
                didTap()
            } label: {
                Text("Logout")
            }
        }
    }
}

struct LoggedInView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInView {
            
        }
    }
}
