//
//  ContentView.swift
//  SimpleSegment
//
//  Created by Tunde Adegoroye on 02/03/2022.
//

import SwiftUI

enum GameEventSegmentType {
    case gameView
    case liveStreaming
}

struct GameEventSegementTint {
    // Place color config here
}

struct GameEventSegement: Identifiable {
    // Can add icon here
    let id = UUID()
    let type: GameEventSegmentType
    let title: String
    let tints: GameEventSegementTint
}

// Dummy Data
extension GameEventSegement {
    static var data: [GameEventSegement] {
        [
        .init(type: .gameView,
              title: "Game View",
              tints: .init()),
        .init(type: .liveStreaming,
              title: "Live Streaming",
              tints: .init())
        ]
    }
}

protocol GameEventViewViewModel {
    var active: GameEventSegement? { get }
    var options: [GameEventSegement] { get }
    func set(_ item: GameEventSegement)
}

class GameEventViewViewModelImpl: GameEventViewViewModel, ObservableObject {
    
    @Published var active: GameEventSegement?
    let options: [GameEventSegement]
    
    init(options: [GameEventSegement]) {
        self.options = options
        self.active = options.first
    }
    
    func set(_ item: GameEventSegement) {
        self.active = item
    }
}

struct ContentView: View {
    typealias Action = (_ type: GameEventSegmentType) -> Void
    @StateObject var vm: GameEventViewViewModelImpl
    let action: Action
    
    init(options: [GameEventSegement], action: @escaping Action) {
        _vm = StateObject(wrappedValue: GameEventViewViewModelImpl(options: options))
        self.action = action
    }
    
    var body: some View {
        
        HStack {
            ForEach(vm.options) { item in
                Button(item.title) {
                    action(item.type)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(options: GameEventSegement.data) { item in
            
        }
    }
}
