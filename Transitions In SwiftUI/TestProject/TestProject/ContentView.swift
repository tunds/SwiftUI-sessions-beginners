//
//  ContentView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                
                Group {
                    
                    DefaultAnimationView()
                    
                    TemplateAnimationView(title: "Toggle Opacity",
                                          transition: .opacity)
                    
                    TemplateAnimationView(title: "Toggle Move Top",
                                          transition: .move(edge: .top))
                    
                    TemplateAnimationView(title: "Toggle Move Bottom",
                                          transition: .move(edge: .bottom))
                    
                    TemplateAnimationView(title: "Toggle Move Leading",
                                          transition: .move(edge: .leading))
                    
                    TemplateAnimationView(title: "Toggle Move Trailing",
                                          transition: .move(edge: .trailing))
                    
                    TemplateAnimationView(title: "Toggle Slide",
                                          transition: .slide)
                    
                    TemplateAnimationView(title: "Toggle Scale",
                                          transition: .scale)
                    
                    TemplateAnimationView(title: "Toggle Scale from 50%",
                                          transition: .scale(scale: 0.5))
                    
                    TemplateAnimationView(title: "Toggle Scale from 50% top left",
                                          transition: .scale(scale: 0.5, anchor: .topLeading))
                }
                
                Group {
                    
                    let combinationTransition = AnyTransition
                        .slide
                        .combined(with: .scale(scale: 0.5))
                        .combined(with: .opacity)
                    
                    TemplateAnimationView(title: "Toggle Combined",
                                          transition: combinationTransition)
                    
                    let asymmetricTransition = AnyTransition
                        .asymmetric(insertion: .move(edge: .bottom),
                                    removal: .slide)
          
                    TemplateAnimationView(title: "Toggle Asymmetric",
                                          transition: asymmetricTransition)
                    
                    let firstCombinationTransition = AnyTransition
                        .move(edge: .bottom)
                        .combined(with: .opacity)
                    
                    let secondCombinationTransition = AnyTransition
                        .move(edge: .bottom)
                        .combined(with: .scale)
                    
                    let asymmetricAndCombinedTransition = AnyTransition
                        .asymmetric(insertion: firstCombinationTransition,
                                    removal: secondCombinationTransition)
                    
                    TemplateAnimationView(title: "Combined & Asymmetric",
                                          transition: asymmetricAndCombinedTransition)
                }
                

            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
