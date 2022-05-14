//
//  ContentView.swift
//  EasyWaysToCreateCustomDataModels
//
//  Created by Tunde Adegoroye on 11/04/2022.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let displayInfo: DisplayInfo
    let statusCount: StatusCount
    var interactions: Interactions
}

extension User {
    struct DisplayInfo {
        let color: Color
        let displayName: String
        let username: String
    }
}

extension User {
    struct StatusCount {
        let followers: Int
        let following: Int
    }
}

extension User {
    struct Interactions {
        var numOfLikes: Int
        
        mutating func like() {
            numOfLikes += 1
        }
    }
}

extension User {
    static var randomData: [User] = [
    
        .init(displayInfo: .init(color: .blue,
                                 displayName: "Tunde Adegoroye",
                                 username: "@tundsdev"),
              statusCount: .init(followers: 2423, following: 563),
              interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .red,
                                     displayName: "Paul Hudson",
                                     username: "@twostraws"),
                  statusCount: .init(followers: 67800, following: 259),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .pink,
                                     displayName: "Sean Allen",
                                     username: "@seanallen_dev"),
                  statusCount: .init(followers: 31200, following: 1),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .mint,
                                     displayName: "Azam Sharp",
                                     username: "@azamsharp"),
                  statusCount: .init(followers: 67800, following: 259),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .indigo,
                                     displayName: "John O'Reilly",
                                     username: "@joreilly"),
                  statusCount: .init(followers: 7697, following: 1353),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .cyan,
                                     displayName: "alex 🧣",
                                     username: "@SwiftyAlex"),
                  statusCount: .init(followers: 570, following: 844),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .teal,
                                     displayName: "Allen W",
                                     username: "@codeine_coding"),
                  statusCount: .init(followers: 8437, following: 542),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .gray,
                                     displayName: "James Seed 🤼‍♂️",
                                     username: "@j_t_saeed"),
                  statusCount: .init(followers: 1586, following: 822),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .gray,
                                     displayName: "Fil",
                                     username: "@codybyfil"),
                  statusCount: .init(followers: 216, following: 220),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .brown,
                                     displayName: "Roddy Munro",
                                     username: "@podomunro"),
                  statusCount: .init(followers: 2638, following: 1054),
                  interactions: .init(numOfLikes: 20)),
        
        
            .init(displayInfo: .init(color: .brown,
                                     displayName: "Roddy Munro",
                                     username: "@podomunro"),
                  statusCount: .init(followers: 2638, following: 1054),
                  interactions: .init(numOfLikes: 20)),
        
        
            .init(displayInfo: .init(color: .purple,
                                     displayName: "Mikaela Caron",
                                     username: "@mikaela_caron"),
                  statusCount: .init(followers: 3288, following: 871),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .purple,
                                     displayName: "Josh \"so many typos\" Holtz 💪🚀",
                                     username: "@joshdholtz"),
                  statusCount: .init(followers: 5465, following: 668),
                  interactions: .init(numOfLikes: 20)),
        
            .init(displayInfo: .init(color: .purple,
                                     displayName: "Chris Wu",
                                     username: "@MuseumShuffle"),
                  statusCount: .init(followers: 2088, following: 1082),
                  interactions: .init(numOfLikes: 20)),
        
    ]
}

struct ContentView: View {
    
    @State private var users: [User] = User.randomData
    
    var body: some View {
        NavigationView {
            List {
                ForEach($users) { $user in
                    UserInfoView(user: $user)
                        .buttonStyle(.plain)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Users")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
