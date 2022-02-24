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
            Color("BlackColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                Image("Gem")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                
                Text("I Am Rich")
                    .font(.system(size: 40))
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
