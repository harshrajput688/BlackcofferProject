//
//  TabBarItem.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import SwiftUI

/// A view that displays tab bar items for individual exploration options.
struct IndividualTabBarItemView: View {
    @Binding var currentTab: Int
    @Namespace private var animationNamespace
    
    /// An array of tab options.
    var tabOptions: [String] = [
        TabBarOption.Individual.rawValue,
        TabBarOption.Professional.rawValue,
        TabBarOption.Merchant.rawValue
    ]
    
    var body: some View {
        HStack {
            ForEach(Array(zip(tabOptions.indices, tabOptions)), id: \.0) { index, opt in
                Button {
                    withAnimation {
                        currentTab = index
                    }
                } label: {
                    VStack {
                        Text(opt)
                        
                        if currentTab == index {
                            Rectangle()
                                .frame(height: 3)
                                .foregroundColor(Color.white)
                                .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
                        } else {
                            Rectangle()
                                .foregroundColor(Color.clear)
                                .frame(height: 3)
                        }
                    }
                    .foregroundColor(currentTab == index ? Color.white : Color("notSelect"))
                }
            }
        }
        .padding(.top)
        .background(Color("tabBarColor"))
    }
}

/// A preview provider for the IndividualTabBarItemView.
struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        IndividualTabBarItemView(currentTab: .constant(1))
    }
}
