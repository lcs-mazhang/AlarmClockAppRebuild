//
//  AlarmView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//


import SwiftUI

struct AlarmView: View {
    
    // Stored properties
    @State var alarmList = [AlarmItem]()
    @State var timepicker = false
    @State var selectedTime = Date()
//    @State var editing = false

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(alarmList) { alarm in
                        Text(alarm.time, style: .time)
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
                            timepicker.toggle()
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
                .sheet(isPresented: $timepicker) {
                    // Date picker view
                    List {
                        DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                            .datePickerStyle(WheelDatePickerStyle())
                            .labelsHidden()
                        HStack{
                            Spacer()
                            Button("Add Alarm") {
                                // Add the selected time and close the picker
                                AddAlarmList(time: selectedTime)
                                timepicker = false
                            }
                            Spacer()
                        }
                    }
                }
            }
        }
        
    }
        func AddAlarmList(time: Date) {
                let newAlarmList = AlarmItem(time: time)
                alarmList.append(newAlarmList)
    }
//    func Delete()
}

#Preview {
    AlarmView()
}
