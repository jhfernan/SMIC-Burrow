//
//  LinearGradiantBackgroundView.swift
//  BurrowDesign
//
//  Created by Jonathan Fernandes on 1/21/22.
//

import SwiftUI

struct LinearGradientBackgroundView: View {
    private var color: Color = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        Rectangle()
            .fill(LinearGradient(
                gradient: Gradient(colors: [color.opacity(1), color.opacity(0.75), color.opacity(0.5)]),
                startPoint: .top,
                endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
    }
}

struct LinearGradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientBackgroundView()
    }
}
