//
//  ImRichView.swift
//  BurrowDesign
//
//  Created by Jonathan Fernandes on 1/13/22.
//  A Recreation of the "I Am Rich" App created by Armin Heinrich
//  https://en.wikipedia.org/wiki/I_Am_Rich

import SwiftUI

struct ImRichView: View {
    var body: some View {
        ZStack {
            K.colors.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Image(K.imgs.gem)
                    .resizable()
                    .scaledToFit()
                
                Text("I Am Rich")
                    .font(.system(size: 45))
                    .foregroundColor(K.colors.white)
                    
            }
            .padding(.horizontal, 30)
        }
    }
}

struct ImRichView_Previews: PreviewProvider {
    static var previews: some View {
        ImRichView()
    }
}
