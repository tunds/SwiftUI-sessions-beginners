//
//  FileManagerView.swift
//  AlertsInSwiftUI
//
//  Created by Tunde Adegoroye on 23/03/2022.
//

import SwiftUI

struct FileManagerView: View {
    
    @State private var showAlert: Bool = false
    @State private var fileName: String = ""
    
    var body: some View {
        VStack {
            
            TextField("Filename",
                      text: $fileName)
            .textFieldStyle(.roundedBorder)
            
            Button("Remove") {
                showAlert.toggle()
            }
        }
        .padding()
        .alert("Remove File",
               isPresented: $showAlert,
               presenting: fileName,
               actions: { file in
            
            Button(role: .destructive) {
                // Handle cancel
            } label: {
                Text("Remove \(file)")
            }

        },
        message: { file in
            Text("You're currently planning on removing \(file) are you sure?")
        })
        
    }
}

struct FileManagerView_Previews: PreviewProvider {
    static var previews: some View {
        FileManagerView()
    }
}
