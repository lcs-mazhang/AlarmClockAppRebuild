//
//  PuzzleView.swift
//  AlarmClockAppRebuild
//
//  Created by GengYu Zhang on 2024-06-06.
//

import SwiftUI

struct PuzzleView: View {
    
    // MARK: Stored properties
    
    // The two numbers the user must add
    @State var firstNumber = Int.random(in: 1...25)
    @State var secondNumber = Int.random(in: 1...25)
    
    // MARK: Computed properties
    
    // The correct sum of the randomly generated numbers
    var correctSum: Int {
        return firstNumber + secondNumber
    }
    
    // Feedback to the user
    @State var feedback = ""
    
    // User's Anwers
    @State var userAnwer:String = ""
    
    // The user interface
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer()
                
                HStack {
                    Spacer()
                    Text("\(firstNumber)")
                        .font(Font.system(size: 50))
                        .padding(.trailing)
                        .bold()
                }
                
                HStack {
                    Text("+")
                        .font(Font.system(size: 50))
                    Spacer()
                    Text("\(secondNumber)")
                        .font(Font.system(size: 50))
                        .padding(.trailing)
                        .bold()
                }
                Divider()
                
                HStack {
                    TextField("Type Answer Here", text: $userAnwer)
                        .keyboardType(.numberPad)
                        .font(Font.system(size: 45))
                }
                
                Spacer()
                
                Button {
                    checkAnswer()
                } label: {
                    Text("Check Anwer")
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Text(feedback)
                    .font(
                        .custom(
                            "BradleyHandITCTT-Bold",
                            size: 50.0,
                            relativeTo: .title3
                        )
                    )
                
                Spacer()
                
                Button {
                    reset()
                } label: {
                    Text("Reset")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
            }
            .padding()
            .navigationTitle("Math Puzzle")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    // MARK: Functions
    
    // Check whether the user's answer was correct
    // Provide appropriate feedback
    func checkAnswer() {
        if Int(userAnwer) == correctSum{
            feedback = "WAKE UP?"
        } else {
            feedback = "WRONG! DO IT AGAIN TO TURN OFF THE ALARAM"
        }
    }
    
    // Reset for a new question
    func reset() {
        
        firstNumber = Int.random(in: 1...25)
        secondNumber = Int.random(in: 1...25)
        feedback = ""
        userAnwer = ""
        
    }
}

#Preview {
    PuzzleView()
}
