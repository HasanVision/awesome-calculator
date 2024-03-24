//
//  ContentView.swift
//  awesome calculator
//
//  Created by H H.HASAN on 2024-03-18.
//

import SwiftUI

enum ClaculatorMode  {
    case notSet
    case addition
    case subtraction
    case muliplication 
    case division
}



struct ContentView: View {
    @State var savedNum = 0
    @State var currentValueInt = 0
    @State var currentValue : String = "0"
    @State var currentMode: ClaculatorMode = .notSet
    @State var lastButtonWasMode = false
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Color(.black)
                VStack {
                    TotalText(value: currentValue)
                    HStack {
                        CalculatorButton(action: didPressNumber,buttonText: "1")
                        CalculatorButton( action: didPressNumber, buttonText: "2")
                        CalculatorButton(action: didPressNumber,buttonText: "3")
                        CalculatorButton( action: didPressMode, mode: .addition, buttonColor: .orange, buttonText:"+")
                        
                    }
                    HStack {
                        CalculatorButton(action: didPressNumber,buttonText: "4")
                        CalculatorButton(action: didPressNumber, buttonText: "5")
                        CalculatorButton(action: didPressNumber,buttonText: "6")
                        CalculatorButton(action: didPressMode, mode: .subtraction, buttonColor: .orange, buttonText: "-")
                        
                    }
                    HStack {
                        CalculatorButton(action: didPressNumber,buttonText: "7")
                        CalculatorButton(action: didPressNumber,buttonText: "8")
                        CalculatorButton(action: didPressNumber,buttonText: "9")
                        CalculatorButton(action: didPressMode, mode: .muliplication, buttonColor: .orange, buttonText: "x")
                        
                    }
                    HStack {
                        CalculatorButton(action: didPressNumber, width: 148,buttonText: "0")
                        CalculatorButton(action: didPressClear,buttonColor: .gray,buttonText: "C")
                        CalculatorButton(action: didPressEquals, buttonColor: .green,buttonText: "=")
                      
                        
                    }
                    HStack{
                        CalculatorButton(action: didPressMode, mode: .division, buttonText: "/")
                    }
                }
            }
            .ignoresSafeArea()
           
            
        }
        
        
        
       
        
        .padding(0.0)
    }
    func didPressNumber (button: CalculatorButton) {
        if lastButtonWasMode {
            lastButtonWasMode = false
            currentValueInt = 0
        }

        if let parsedValue = Int("\(currentValueInt)" + button.buttonText) {
            currentValueInt = parsedValue
            updateText()
        } else {
            currentValue = "Error"
            currentValueInt = 0
        }
       
    }
    func didPressMode (button: CalculatorButton) {
        currentMode = button.mode
        lastButtonWasMode = true
       
    }
    func didPressClear (button: CalculatorButton) {
         savedNum = 0
         currentValueInt = 0
         currentValue = "0"
         currentMode = .notSet
         lastButtonWasMode = false
    }
    func didPressEquals(button: CalculatorButton) {
        if currentMode == .notSet || lastButtonWasMode {
            return
        }
        switch currentMode {
        case .addition:
            savedNum += currentValueInt
        case .subtraction:
            savedNum -= currentValueInt
        case .muliplication:
            savedNum *= currentValueInt
        case .division:
            if currentValueInt != 0 {
                savedNum /= currentValueInt
            } else {
                currentValue = "Error"
                currentValueInt = 0
                return
            }
        case .notSet:
            updateText()
        }
        
        currentValueInt = savedNum
        updateText()
        lastButtonWasMode = true
    }

    func updateText () {
        
        
        if currentMode == .notSet {
            savedNum = currentValueInt
        }
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
//        numberFormatter.maximumFractionDigits = 6
        
        let num = NSNumber(value: currentValueInt)
        currentValue = numberFormatter.string(from: num) ?? "Error"
    }
}
        
#Preview {
    ContentView()
}

