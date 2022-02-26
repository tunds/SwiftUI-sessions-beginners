//
//  ContentView.swift
//  TextEditorInSwiftUI
//
//  Created by Tunde Adegoroye on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            descriptionTxtVw
            textEditorVw
            submitBtn
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    var descriptionTxtVw: some View {
        Text("Description")
    }
    
    var submitBtn: some View {
        Button {
            print("The user inputted: \(text)")
        } label: {
            Text("Submit")
        }
    }
    
    var textEditorVw: some View {
        TextEditor(text: $text)
            .frame(height: 250)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.2), lineWidth: 4)
            )
    }
}
