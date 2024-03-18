//
//  ContentView.swift
//  awesome calculator
//
//  Created by H H.HASAN on 2024-03-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Color(.black)
                VStack {
                    TotalText()
                    HStack {
                        CalculatorButton(buttonText: "1")
                        CalculatorButton(buttonText: "2")
                        CalculatorButton(buttonText: "3")
                        CalculatorButton(buttonColor: .orange, buttonText: "+")
                        
                    }
                    HStack {
                        CalculatorButton(buttonText: "4")
                        CalculatorButton(buttonText: "5")
                        CalculatorButton(buttonText: "6")
                        CalculatorButton(buttonColor: .orange, buttonText: "-")
                        
                    }
                    HStack {
                        CalculatorButton(buttonText: "7")
                        CalculatorButton(buttonText: "8")
                        CalculatorButton(buttonText: "9")
                        CalculatorButton(buttonColor: .orange, buttonText: "x")
                        
                    }
                    HStack {
                        CalculatorButton(buttonText: "0")
                        CalculatorButton( buttonColor: .gray,buttonText: "C")
                        CalculatorButton(buttonColor: .orange,buttonText: "=")
                      
                        
                    }
                }
            }
            .ignoresSafeArea()
           
            
        }
       
        
        .padding(0.0)
    }
}
        
#Preview {
    ContentView()
}

