//
//  AlarmView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
//                    Text("6:30 AM")
//                    Text("9:30 AM")
                }
                .listStyle(.plain)
                Spacer()
            }
            .navigationTitle("Alarm")
            .navigationBarTitleDisplayMode(.inline)
            .bold()
            .toolbar {
                // Top Tool bar item
                ToolbarItem(placement: .navigationBarLeading) {
                    // Adding alarm
                    Button {
                        // Func
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    // Edit alarm
                    Button ("Edit") {
                        // Func
                    }
                }
            }
        }
    }
}

#Preview {
    AlarmView()
}
