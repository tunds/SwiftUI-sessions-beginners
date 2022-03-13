//
//  ContentView.swift
//  ScrollViewAndScrollViewReader
//
//  Created by Tunde Adegoroye on 02/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    private let range: ClosedRange<Int> = 0...50
    
    @State private var hasReachedEnd = false
    
    var body: some View {
//        ScrollView(showsIndicators: false) {
//            VStack {
//                ForEach(0...50, id: \.self) { i in
//                    createTxtVw(with: i)
//                }
//            }
//        }
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { proxy in
                    HStack {
                        ForEach(range, id: \.self) { i in
                            createTxtVw(with: i)
                                .id(i)
                        }
                    }
                    .padding(.bottom, 50)
                    .overlay(alignment: !hasReachedEnd ? .bottomLeading : .bottomTrailing) {
                        
                        HStack {
                            Button {
                                if let firstIndex = range.min() {
                                    withAnimation {
                                        proxy.scrollTo(firstIndex)
                                    }
                                    hasReachedEnd = false
                                }
                            } label: {
                                Image(systemName: "arrow.backward")
                            }
                            Button {
                                if let lastIndex = range.max() {
                                    withAnimation {
                                        proxy.scrollTo(lastIndex)
                                    }
                                    hasReachedEnd = true
                                }
                            } label: {
                                Image(systemName: "arrow.forward")
                            }
                        }
                        .symbolVariant(.circle.fill)
                        .font(.title.weight(.black))
                        
                    }
                }
            }
            
 
        }
    }
}

private extension ContentView {
    
    func createTxtVw(with index: Int) -> some View {
        Text("\(index)")
            .padding()
            .background(.mint, in: RoundedRectangle(cornerRadius: 8,
                                                    style: .continuous))
            .padding(.horizontal, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
