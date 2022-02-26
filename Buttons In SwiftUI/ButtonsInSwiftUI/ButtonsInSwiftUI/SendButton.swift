//
//  SendButton.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 05/02/2022.
//

import SwiftUI

struct SendButton: View {
    
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text("Send Mail")
        }
        .buttonStyle(.send)
    }
}

struct SendButton_Previews: PreviewProvider {
    static var previews: some View {
        SendButton {}
    }
}
