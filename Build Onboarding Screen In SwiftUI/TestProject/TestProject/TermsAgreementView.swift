//
//  TermsAgreementView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct TermsAgreementView: View {
    let action: () -> Void
    var body: some View {
        
        VStack {
            title
            content
            agreeToTerms
        }
    }
}

struct TermsAgreementView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAgreementView {}
    }
}

private extension TermsAgreementView {
    
    var title: some View {
        Text("Terms and Conditions")
            .font(
                .system(.largeTitle, design: .rounded)
                .bold()
            )
            .padding(.bottom, 8)
    }
    
    var content: some View {
        ScrollView {
            
            ForEach(Array(repeating: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra vitae congue eu consequat ac. Amet mauris commodo quis imperdiet massa. Quis varius quam quisque id diam. Vitae proin sagittis nisl rhoncus mattis rhoncus urna. Non pulvinar neque laoreet suspendisse interdum consectetur. Pellentesque massa placerat duis ultricies lacus. Non diam phasellus vestibulum lorem sed risus ultricies tristique. Proin fermentum leo vel orci. Sagittis eu volutpat odio facilisis mauris. Ultrices neque ornare aenean euismod. Augue ut lectus arcu bibendum. Viverra maecenas accumsan lacus vel facilisis volutpat. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Ullamcorper malesuada proin libero nunc consequat. Sagittis purus sit amet volutpat consequat.", count: 5), id: \.self) { item in
                Text(item)
                    .italic()
            }
            .padding()
            
        }
    }
    
    var agreeToTerms: some View {
        Button("Agree to terms") {
           action()
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .padding()
    }
}
