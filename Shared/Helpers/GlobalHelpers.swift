//
//  GlobalHelpers.swift
//  BurrowDesign
//
//  Created by Jonathan Fernandes on 1/11/22.
//

import SwiftUI


// MARK:  For the TabBarViewComponent

let tabs = [
    Tab(label: "Home", img: "house.fill"),
    Tab(label: "I'm Rich App", img: "yensign.circle"),
    Tab(label: "ILU App", img: "heart.fill"),
    Tab(label: "Weather App", img: "cloud.drizzle.fill"),
    Tab(label: "Timer App", img: "timer")
]

struct K {
    struct imgs {
        static var fox: String = "ChibiFox"
        static var gem: String = "ImRichGem"
    }
    
    struct colors {
        static var primary: Color = Color("PrimaryColor")
        static var primaryDark: Color = Color("PrimaryDarkColor")
        static var black: Color = Color("BlackColor")
        static var gray: Color = Color("GrayColor")
        static var white: Color = Color("WhiteColor")
    }
}
