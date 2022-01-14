//
//  ThingsILoveAboutYouView.swift
//  BurrowDesign
//
//  Created by Jonathan Fernandes on 1/13/22.
//

import SwiftUI

struct ThingsILoveAboutYouView: View {
    var facts: [String]
    
    @State var currentFact: String
    let impactMed = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        ZStack {
            K.colors.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Reasons Why I Love You")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Spacer()
                
                Text(currentFact)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .font(.title)
                
                Spacer()
                
                Button {
                    currentFact = facts.randomElement()!
                    impactMed.impactOccurred()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .foregroundColor(K.colors.primary)
                            .frame(width: 200, height: 50)
                        
                        Text("GET ANOTHER")
                            .foregroundColor(K.colors.black)
                    }
                }
                .padding(.bottom)

            }
            .foregroundColor(K.colors.white)
        }
    }
}

struct ThingsILoveAboutYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThingsILoveAboutYouView(facts: myFacts, currentFact: myFacts[79])
    }
}
