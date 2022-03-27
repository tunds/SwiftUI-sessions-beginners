//
//  ContentView.swift
//  PresentingAnDismissingViewsInSwiftUI
//
//  Created by Tunde Adegoroye on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    // Simple Sheet
    @State private var isShowingSimpleSheet: Bool = false
    
    // Simple Full screen cover
    @State private var isShowingSimpleFullScreenCover: Bool = false
    
    // Popover
    @State private var isShowingSimplePopover: Bool = false

    // Terms
    @State private var isShowingTerms: Bool = false
    @State private var hasAcceptedTerms: Bool = false
    
    var body: some View {
        
        VStack {
            sheetSimpleExample
            fullscreenSimpleExample
            popoverSimpleExample
            termsExample
        }
        .sheet(isPresented: $isShowingTerms) {
            TermsAgreementView(isShowingTerms: $isShowingTerms,
                               hasAcceptedTerms: $hasAcceptedTerms)
                .interactiveDismissDisabled(!hasAcceptedTerms)
        }
        .sheet(isPresented: $isShowingSimpleSheet,
               onDismiss: didDismiss) {
            WarningView()
        }
       .fullScreenCover(isPresented: $isShowingSimpleFullScreenCover,
                        onDismiss: didDismiss) {
           WarningView()
               .ignoresSafeArea()
       }
       .popover(isPresented: $isShowingSimplePopover,
                attachmentAnchor: .point(.trailing),
                arrowEdge: .trailing) {
           WarningView()
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    func didDismiss() {
        print("Dismissed sheet")
    }
}

private extension ContentView {
    
    var termsExample: some View {
        
        Button("Terms Example") {
            isShowingTerms.toggle()
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        
    }
    
    var sheetSimpleExample: some View {
        
        Button("Sheet Example") {
            isShowingSimpleSheet.toggle()
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        
    }
    
    var fullscreenSimpleExample: some View {
        
        Button("Fullscreen Example") {
            isShowingSimpleFullScreenCover.toggle()
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        
    }
    
    var popoverSimpleExample: some View {
        
        Button("Popover Example") {
            isShowingSimplePopover.toggle()
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
}
