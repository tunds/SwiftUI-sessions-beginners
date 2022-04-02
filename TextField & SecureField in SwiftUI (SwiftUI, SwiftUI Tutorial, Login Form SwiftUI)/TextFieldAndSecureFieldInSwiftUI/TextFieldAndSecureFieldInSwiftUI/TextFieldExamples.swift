//
//  TextFieldExamples.swift
//  TextFieldAndSecureFieldInSwiftUI
//
//  Created by Tunde Adegoroye on 01/02/2022.
//

import SwiftUI

struct TextFieldExamples: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Name",
                      text: .constant(""))
            
            TextField("Name",
                      text: .constant(""),
                       prompt: Text("Enter your name"))
            
            TextField(text: .constant("")) {
                Text("Name")
            }
            
            SecureField("Password",
                      text: .constant(""),
                       prompt: Text("Enter your password"))
        }
    }
}

struct TextFieldExamples_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExamples()
    }
}
