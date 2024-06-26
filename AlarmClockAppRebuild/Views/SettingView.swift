//
//  SettingView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        //Stored properties
        //Enabled and Disable puzzles
        @State var arePuzzlesEnabled: Bool = true
        
        NavigationStack {
            VStack {
                List {
                    Toggle(isOn: $arePuzzlesEnabled) {
                        Text("Puzzles")
                    }
                    NavigationLink(destination: AlarmSoundsView()) {
                        LabeledContent("Sounds & Haptics") {

                        }
                    }
                }
            }
            .navigationTitle("Setting")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
        
        #Preview {
            SettingView()
        }
