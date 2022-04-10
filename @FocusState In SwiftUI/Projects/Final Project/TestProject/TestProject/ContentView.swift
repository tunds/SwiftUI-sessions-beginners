//
//  ContentView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

struct ContentView: View {
        
    @StateObject private var vm = ContactsViewModel()
    @State private var shouldShowCreateContact: Bool = false
    
    var body: some View {
        NavigationView {
            LazyVStack {
                
                if vm.contacts.isEmpty {
                    
                    Text("There are no contacts please tap the plus to add some")
                    
                } else {
                    
                    ForEach(vm.contacts) { item in
                        ContactInfoView(item: item)
                    }
                        
                }
                
            }
            .padding(.horizontal)
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        shouldShowCreateContact.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $shouldShowCreateContact) {
                CreateContactView { contact in
                    print("New contact")
                    dump(contact)
                    vm.add(contact)
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
