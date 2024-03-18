//
//  CalculatorButton.swift
//  awesome calculator
//
//  Created by H H.HASAN on 2024-03-18.
//

import SwiftUI

struct CalculatorButton: View {
    
    var buttonColor: Color  = Color(.green)
    var buttonText: String = "1"
    var body: some View {
        Text(buttonText)
            .font(.largeTitle)
            .frame(width: 70, height: 70, alignment: .center)
            .background(buttonColor)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 50))
            
    }
}

#Preview {
    CalculatorButton()
}
