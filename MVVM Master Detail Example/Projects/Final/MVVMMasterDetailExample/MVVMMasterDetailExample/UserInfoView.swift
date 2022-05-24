//
//  UserInfoView.swift
//  MVVMMasterDetailExample
//
//  Created by Tunde Adegoroye on 14/05/2022.
//

import SwiftUI

struct UserInfoView: View {
    let name: String
    var body: some View {
        VStack {
            
            Text(name)
                .bold()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}


struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(name: "Tunds")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
