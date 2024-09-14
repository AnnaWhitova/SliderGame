//
//  ContentView.swift
//  SliderGame
//
//  Created by Анна Белова on 13.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var contentVVM = ContentViewViewModel()
    
 
    var body: some View {
        Text("Подвинь слайдер, как можно ближе к: \(contentVVM.targetValue)")
        SliderView(contentVVM: contentVVM, color: .red)
            .padding()
      
        VStack {
            ButtonView(action: {
                showAlert = true
            }, text: "Проверь меня!")
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Результат"),
                      message: Text("Ваш результат: \(contentVVM.computeScore())"),
                      dismissButton: .default(Text("Ок")))
            }
            
            ButtonView(action: contentVVM.resetGame, text: "Начать заново")
            
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
