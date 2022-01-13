//
//  CustomTabBarView.swift
//  BurrowDesign
//
//  Created by Jonathan Fernandes on 1/11/22.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selection: Int
    @Namespace private var currentTab
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(tabs.indices) { i in
                GeometryReader { geometry in
                    VStack(spacing: 3) {
                        if selection == i {
                            // We use a label color to have it match the application's theme (light or dark mode, for example). Then we offset it to help it align correctly and then we use matched geometry to help give us a smooth animation as it moves across the tab
                            Color(.label)
                                .frame(height: 2)
                                .offset(y: -8)
                                .matchedGeometryEffect(id: "currentTab", in: currentTab)
                        }
                        
                        if tabs[selection].label == "TBA" && tabs[i].label == "TBA" {
                            Image(systemName: tabs[i].img)
                                .frame(height: 20)
                                .rotationEffect(.degrees(25))
                        } else {
                            Image(systemName: tabs[i].img)
                                .frame(height: 20)
                                .rotationEffect(.degrees(0))
                        }
                        
                        Text(tabs[i].label)
                            .font(.caption2)
                            .fixedSize()
                        
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: geometry.size.width / 2, height: 45, alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selection == i ? Color(.label) : .secondary)
                    .onTapGesture {
                        withAnimation {
                            selection = i
                        }
                    }
                }
                .frame(height: 45, alignment: .bottom)
            }
        }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selection: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}

struct Tab {
    let label: String
    let img: String
}
