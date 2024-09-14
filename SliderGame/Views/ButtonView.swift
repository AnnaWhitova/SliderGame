//
//  ButtonView.swift
//  SliderGame
//
//  Created by Анна Белова on 13.09.2024.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let text: String
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.blue)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 60)
    }
}

#Preview {
    ButtonView(action: {}, text: "Проверь меня!")
}
