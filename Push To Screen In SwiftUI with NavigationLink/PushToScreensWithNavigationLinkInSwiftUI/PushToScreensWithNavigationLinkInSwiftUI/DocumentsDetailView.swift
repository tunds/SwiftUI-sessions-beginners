//
//  DocumentsDetailView.swift
//  PushToScreensWithNavigationLinkInSwiftUI
//
//  Created by Tunde Adegoroye on 08/04/2022.
//

import SwiftUI

struct DocumentsDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) private var presentationMode

    @Binding var showDocumentsDetail: Bool
    
    var body: some View {
        VStack {
            Button("Dismiss via Binding") {
                showDocumentsDetail.toggle()
            }
            Button("Dismiss via Enviroment Values") {
                handleDismiss()
            }
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .navigationBarHidden(true)
    }
}

struct DocumentsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsDetailView(showDocumentsDetail: .constant(true))
    }
}

private extension DocumentsDetailView {

    func handleDismiss() {
        if #available(iOS 15, *) {
            dismiss()
        } else {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
