//
//  PeopleView.swift
//  PeopleView
//
//  Created by Tunde on 27/07/2021.
//

import SwiftUI

struct PeopleView: View {
    
    @Environment(\.refresh) private var refreshAction
    @ObservedObject var vm: PeopleViewModel
    
    var body: some View {
        VStack {
            List {
                HintView()
                ForEach(vm.people) { person in
                    
                    Text("\(person.gender.rawValue) \(person.name)")
                }
            }
            .listRowSeparator(.hidden)
            .navigationTitle("Random Person")
            .toolbar {
                refreshContent
            }
        }
    }
    
    @ViewBuilder
    var refreshContent: some View {
        if let refreshAction = refreshAction {
            
            if vm.isLoading {
                ProgressView()
            } else {
                Button {
                    Task {
                        await refreshAction()
                    }
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView(vm: PeopleViewModel())
    }
}
