//
//  AnimeView.swift
//  PickerInSwiftUI
//
//  Created by Tunde Adegoroye on 08/02/2022.
//

import SwiftUI

enum Anime: CaseIterable, Identifiable, Hashable  {
    case demonSlayer
    case attackOnTitan
    case bokuNoHero
    
    var id: Self { self }
}

extension Anime {
    var title: String {
        switch self {
        case .demonSlayer:
            return "Demon Slayer"
        case .attackOnTitan:
            return "Attack On Titan"
        case .bokuNoHero:
            return "My Hero Academia"
        }
    }
}

struct AnimeView: View {
    
    @State private var selectedItem: Anime = Anime.allCases.first!
    
    var body: some View {
        VStack {
            Text("Selected Anime \(selectedItem.title)")

            Picker("Choose a name",
                   selection: $selectedItem) {
                ForEach(Anime.allCases) { item in
                    Text(item.title)
                        .tag(item)
                }
            }
            .pickerStyle(.wheel)
        }
    }
}

struct AnimeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeView()
    }
}
