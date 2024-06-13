//
//  AlarmView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//

import SwiftUI

struct AlarmView: View {
    
    // Stored properties
    @State var alarmList = [Date]()
    @State var timepicker = false
    @State var selectedTime = Date()
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
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
