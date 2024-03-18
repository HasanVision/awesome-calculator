//
//  TotalText.swift
//  awesome calculator
//
//  Created by H H.HASAN on 2024-03-18.
//

import SwiftUI

struct TotalText: View {
    var value: String = "0"
    var body: some View {
        Text(value)
            .foregroundColor(.green)
            .multilineTextAlignment(.center)
            .font(.system(size:60))
            .lineLimit(1)
    }
}

#Preview {
    TotalText()
        .background(.black)
}
