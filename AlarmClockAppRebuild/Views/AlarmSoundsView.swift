//
//  AlarmSoundsView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-07.
//

import SwiftUI

struct AlarmSoundsView: View {
    
    //Stored properties
    @State var soundVolume: Double = 0.5
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Text("Reflection")
                    Text("Arpeggio")
                    Text("Breaking")
                    Text("Chirp")
                    HStack {
                        Text("Sounds")
                        Spacer()
                        Slider(value: $soundVolume)
                    }
                }
                .listStyle(.plain)
                .bold()
                Spacer()
            }
            .navigationTitle("Sounds & Haptics")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AlarmSoundsView()
}

