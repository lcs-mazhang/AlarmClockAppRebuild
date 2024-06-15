//
//  AlarmView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//
//
/// Hi Mr. Gordon, I am sorry I didn't finish this project. As I tried to figure out things I relized Alarm Clock app is so much more then I thought it would be. I could not figure out how to make phone ring, I do not know know how to have muitple rings sounds install (I believe I need Supabase to do that?) For the puzzle, my old idea is use an "Memory game swift ui" on youtube but I used math game we did before, at last since that is more orginal? I was sick at that time and I never had a chance to do that small task...and of course without the phone ring I could not turn the ring off by user soloving the puzzle. (I know if ask you questions more I wil be solving these problems... I am just too shy to ask when you have to help so many others)
///

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
