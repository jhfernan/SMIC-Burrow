//
//  WelcomeView.swift
//  BurrowDesign
//
//  Created by Jonathan Fernandes on 1/12/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            K.colors.gray
                .ignoresSafeArea()
            
            VStack {
                Image(K.imgs.fox)
                    .resizable()
                    .scaledToFit()
                
                Text("Welcome to iOS Dev Club!")
                    .font(.title)
                    .foregroundColor(K.colors.black)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
