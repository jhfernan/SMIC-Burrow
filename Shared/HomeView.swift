//
//  ContentView.swift
//  Shared
//
//  Created by Jonathan Fernandes on 1/11/22.
//

import SwiftUI

struct HomeView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                WelcomeView()
                    .tag(0)
                ImRichView()
                    .tag(1)
                ThingsILoveAboutYouView(facts: myFacts, currentFact: myFacts.randomElement()!)
                    .tag(2)
                Text("Weather App")
                    .tag(3)
                Text("Egg Timer")
                    .tag(4)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Divider()
            
            // Custom Tab View
            TabBarView(selection: $selection)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
