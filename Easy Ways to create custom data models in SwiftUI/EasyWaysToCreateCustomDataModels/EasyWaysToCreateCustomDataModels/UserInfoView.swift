//
//  UserInfoView.swift
//  EasyWaysToCreateCustomDataModels
//
//  Created by Tunde Adegoroye on 11/04/2022.
//

import SwiftUI

struct UserInfoView: View {
    
    @Binding var user: User
    
    var body: some View {
        VStack {
            
            HStack {

                VStack(alignment: .leading) {
                    displayInfo
                    statusCount
                }
                
                Spacer()
                
                interactions
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(user: .constant(.randomData.first!))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

private extension UserInfoView {
    
    var displayInfo: some View {
        HStack(alignment: .top) {
            Text((user.displayInfo.displayName.prefix(1)))
                .foregroundStyle(.white)
                .font(.system(size: 18, weight: .heavy, design: .rounded))
                .padding()
                .background(user.displayInfo.color, in: Circle())
            VStack(alignment: .leading) {
                Text(user.displayInfo.displayName)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                Text(user.displayInfo.username)
                    .font(.footnote)
            }
        }
    }
    
    var statusCount: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("Following")
                    .font(.system(size: 11, weight: .heavy, design: .rounded))
                Text("\(user.statusCount.following)")
                    .font(.system(size: 10, weight: .light, design: .rounded))
                    .foregroundStyle(.gray)
            }
            
            VStack(alignment: .leading) {
                Text("Followers")
                    .font(.system(size: 11, weight: .heavy, design: .rounded))
                Text("\(user.statusCount.followers)")
                    .font(.system(size: 10, weight: .light, design: .rounded))
                    .foregroundStyle(.gray)
            }
        }
    }
    
    var interactions: some View {
        VStack {
            Button {
                user.interactions.like()
            } label: {
                Image(systemName: "heart")
                    .symbolVariant(.fill)
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 30, weight: .heavy, design: .rounded))

            }
                
            Text("\(user.interactions.numOfLikes) Likes")
                .font(.system(size: 10, weight: .light, design: .rounded))

        }
    }
}
