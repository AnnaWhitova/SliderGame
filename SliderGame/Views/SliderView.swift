//
//  SliderView.swift
//  SliderGame
//
//  Created by Анна Белова on 14.09.2024.
//

import SwiftUI

struct SliderView: View {
    @Bindable var contentVVM: ContentViewViewModel
    let color: UIColor
  
    var body: some View {
        HStack {
            Text("0")
            CustomSliderRepresentation(currentValue: $contentVVM.currentValue, color: color, alpha: contentVVM.getAlpha())
            Text("100")
        }
    }
}

#Preview {
    SliderView(contentVVM: ContentViewViewModel(), color: .red)
}
