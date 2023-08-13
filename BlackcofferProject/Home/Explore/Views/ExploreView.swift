//
//  ExploreView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import SwiftUI

/// A view that displays exploration content.
struct ExploreView: View {
    @State var currentTab: Int = 0
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                HeaderView(headerTitle: "Explore")
                IndividualTabBarItemView(currentTab: $currentTab)
                Spacer()
                TabView(selection: $currentTab) {
                    // Add different views for each tab here
                    IndividualView()
                        .tag(0)
                    
                    ProfessionalView()
                        .tag(1)
                    
                    MerchantView()
                        .tag(2)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .offset(y: -6)
            }
        }
    }
}

/// A preview provider for the ExploreView.
struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(currentTab: 0)
    }
}
