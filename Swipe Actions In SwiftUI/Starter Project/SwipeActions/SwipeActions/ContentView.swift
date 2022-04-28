//
//  ContentView.swift
//  SwipeActions
//
//  Created by Tunde on 02/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = MessagesViewModel()
    
    var body: some View {
        NavigationView  {
            List {
                ForEach(vm.data) { item in
                    InboxItemView(item: item)
                        .swipeActions(allowsFullSwipe: !item.isFlagged) {
                            
                            if item.isFlagged {
                                
                                Button {
                                    vm.toggleFlagged(for: item)
                                } label: {
                                    Label("Unflag", systemImage: "flag.slash")
                                }
                                .tint(Color("darkRed"))
                                
                                Button {
                                    print("Present More")
                                } label: {
                                    Label("More", systemImage: "ellipsis")
                                        .symbolVariant(.circle)
                                }
                                
                            } else {
                                
                                Button(role: .destructive) {
                                    vm.delete(item)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                                
                                Button {
                                    vm.toggleFlagged(for: item)
                                } label: {
                                    Label("Flag", systemImage: "flag")
                                }
                                .tint(Color("darkRed"))
                                
                                Button {
                                    print("Present More")
                                } label: {
                                    Label("More", systemImage: "ellipsis")
                                        .symbolVariant(.circle)
                                }
                                
                            }
                        }
                        .swipeActions(edge: .leading) {
                            
                            Button {
                                vm.toggleRead(for: item)
                            } label: {
                                
                                if item.isRead {
                                    
                                    Label("Unread", systemImage: "envelope.badge")
                                   
                                } else {
                                    Label("Read", systemImage: "envelope.open")
                                
                                }
                            }
                            .tint(.accentColor)
                        }
                }
            }
            .searchable(text: .constant(""), prompt: "Search")
            .listStyle(.plain)
            .navigationTitle("Inbox")
            .toolbar {
                // Add in Navigation Edit Button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Edit")
                    }
                    .tint(.blue)
                }
                
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {} label: {
                        Image(systemName: "line.3.horizontal.decrease")
                            .symbolVariant(.circle)
                            .foregroundColor(.accentColor)
                    }
                    Spacer()
                    VStack {
                        Text("Updated just now")
                            .font(.caption)
                        Text("80,000 unread")
                            .font(.footnote)
                            .opacity(0.6)
                    }
                    Spacer()
                    Button {} label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.accentColor)
                    }
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
