//
//  CalculatorButton.swift
//  awesome calculator
//
//  Created by H H.HASAN on 2024-03-18.
//

import SwiftUI

struct CalculatorButton: View {
    var action: (CalculatorButton) -> Void = {_ in }
    var mode : ClaculatorMode = ClaculatorMode.notSet
    var width: CGFloat = 70
    var buttonColor: Color  = Color(.green)
    var buttonText: String = "1"
    var body: some View {
        Button {
            action(self)
        } label: {
            Text(buttonText)
                .font(.largeTitle)
                .frame( width: width , height: 70, alignment: .center)
                .background(buttonColor)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
        }

        
            
    }
   
}

#Preview {
    CalculatorButton()
}
