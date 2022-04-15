//
//  ContentView.swift
//  SimpleSegment
//
//  Created by Tunde Adegoroye on 02/03/2022.
//

import SwiftUI

// MARK: - Models
/*
 This type contains all of the options
 that are available for the segement
 in order to add more add more cases
 */
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

// MARK: - Models Fake Data

extension GameEventSegement {
    // This is dummy data that can be used to quickly see some options
    
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

// MARK: - GameEventViewViewModel Implementation
protocol GameEventViewViewModel {
    var active: GameEventSegement? { get }
    var options: [GameEventSegement] { get }
    func set(_ item: GameEventSegement)
}

class GameEventViewViewModelImpl: GameEventViewViewModel, ObservableObject {
    
    /// The active item that has been selected
    @Published var active: GameEventSegement?
    let options: [GameEventSegement]
    
    init(options: [GameEventSegement]) {
        self.options = options
        self.active = options.first
    }
    
    /// Sets the current active items within the view model
    /// - Parameter item: The segment type that will now become active
    func set(_ item: GameEventSegement) {
        self.active = item
    }
    
    /// Some info about our func
    /// - Parameters:
    ///   - item: The item to pass in
    ///   - anotheritem: The second item ot pass in
    /// - Returns: Some dummy data
    func getVal(item: Int, anotheritem: String) -> Int { item }
}

// MARK: - Main View
struct ContentView: View {
    
    // MARK: - Main View Aliases
    typealias Action = (_ type: GameEventSegmentType) -> Void
    
    // MARK: - Main View Source of truth
    @StateObject var vm: GameEventViewViewModelImpl
    
    // MARK: - Main View Constants
    let action: Action
    
    // MARK: - Main View Init
    init(options: [GameEventSegement], action: @escaping Action) {
        _vm = StateObject(wrappedValue: GameEventViewViewModelImpl(options: options))
        self.action = action
    }
    
    // MARK: - Main View Body
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

// MARK: - Main View Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(options: GameEventSegement.data) { item in
            
        }
    }
}
