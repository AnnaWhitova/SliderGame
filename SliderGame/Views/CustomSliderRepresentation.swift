//
//  SliderRepresentation.swift
//  SliderGame
//
//  Created by Анна Белова on 13.09.2024.
//

import SwiftUI

struct CustomSliderRepresentation: UIViewRepresentable {
    @Binding var currentValue: Double
    
    var color: UIColor
    var alpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = Float(currentValue)
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
        uiView.thumbTintColor = color.withAlphaComponent(alpha)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

extension CustomSliderRepresentation {
    class Coordinator: NSObject {
        @Binding var currentValue: Double
        
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            currentValue = Double(sender.value)
        }
        
    }
}

#Preview {
    CustomSliderRepresentation(currentValue: .constant(10.0), color: .red, alpha: 100.0)
}
