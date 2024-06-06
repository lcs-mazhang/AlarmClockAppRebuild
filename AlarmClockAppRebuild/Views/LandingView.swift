//
//  LandingView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView {
            
            AlarmView()
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Reviews")
                }
            
            PuzzleView()
                .tabItem {
                    Image(systemName:"puzzlepiece.extension")
                    Text("puzzle")
                }
            
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                }
            
        }
    }
}

#Preview {
    LandingView()
}
