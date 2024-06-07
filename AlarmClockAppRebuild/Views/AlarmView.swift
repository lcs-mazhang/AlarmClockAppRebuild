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
                    Text("6:30 AM")
                    Text("9:30 AM")
                }
                .listStyle(.plain)
                Spacer()
            }
            .navigationTitle("Alarm")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // Func
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
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
