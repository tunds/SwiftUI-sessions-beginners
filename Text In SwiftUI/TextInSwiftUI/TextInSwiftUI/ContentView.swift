//
//  ContentView.swift
//  TextInSwiftUI
//
//  Created by Tunde Adegoroye on 07/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    let money: Decimal = 50.2
    private let dateFormat: Date.FormatStyle = .init(date: .abbreviated,
                                                     time: .shortened)
    
    var body: some View {
        VStack {
            Group {
                Text("My Text Here")

                Text("My Text Here")
                    .bold()
                    .italic()
                    .underline(true, color: .red)

                Text("My Text Here")
                    .foregroundColor(.mint)
                    .font(.largeTitle.weight(.black))

                Text("My Text Here")
                    .foregroundColor(.blue)
                    .font(.system(size: 18,
                                  weight: .semibold,
                                  design: .rounded))
                
            }

            Group {
                
                Text(.now, style: .timer)

                Text(.now, style: .time)
                Text(.now, style: .date)

                Text("View calendar \(Image(systemName: "calendar")) here")

                Text(Date.now...Date.now.addingTimeInterval(3600))
                             
                Text(Date.now, format: Date.FormatStyle(date: .abbreviated,
                                                         time: .shortened))

                
                Text(72.3, format: .currency(code: "GBP"))
                Text(72.3, format: .currency(code: "USD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
