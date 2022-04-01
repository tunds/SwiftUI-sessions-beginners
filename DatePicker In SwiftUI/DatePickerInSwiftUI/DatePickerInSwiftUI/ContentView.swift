//
//  ContentView.swift
//  DatePickerInSwiftUI
//
//  Created by Tunde Adegoroye on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedDate: Date = .now
    
    private let dateRange: ClosedRange<Date> = {
        
        let calendar = Calendar.current
        let minAgeDate = calendar.date(byAdding: .year, value: -120, to: .now)
        let maxAgeDate = calendar.date(byAdding: .year, value: -18, to: .now)

        return minAgeDate!...maxAgeDate!
    }()
    
    var body: some View {
        
        
        DatePicker("",
            selection: $selectedDate,
            in: dateRange,
            displayedComponents: [.date]
        )
        .labelsHidden()
        .datePickerStyle(.graphical)
        
//        VStack {
//
//            Text(selectedDate, style: .date)
//
//            DatePicker(
//                "Start Date",
//                selection: $selectedDate,
//                displayedComponents: [.date, .hourAndMinute]
//            )
//
//            DatePicker(
//                "Start Date",
//                selection: $selectedDate,
//                displayedComponents: [.date]
//            )
//                .labelsHidden()
//
//            DatePicker(
//                selection: $selectedDate,
//                displayedComponents: [.date, .hourAndMinute]
//            ) {
//                Text("Select a date")
//            }
//
//            DatePicker(
//                selection: $selectedDate,
//                in: dateRange,
//                displayedComponents: [.date]
//            ) {
//                Text("Over 18's only")
//            }
//
//            DatePicker("",
//                selection: $selectedDate,
//                in: dateRange,
//                displayedComponents: [.date]
//            )
//            .labelsHidden()
//            .datePickerStyle(.wheel)
//
//            DatePicker("",
//                selection: $selectedDate,
//                in: dateRange,
//                displayedComponents: [.date]
//            )
//            .labelsHidden()
//            .datePickerStyle(.graphical)
//            .background(.mint)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
