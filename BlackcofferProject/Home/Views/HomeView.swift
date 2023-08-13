//
//  HomeView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import SwiftUI

/// The main view representing the home screen of the BlackcofferProject app.
struct HomeView: View {
    @State private var tabSelection = 0
    
    var body: some View {
        ZStack {
            // Background color
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                // TabView for navigating between different sections
                TabView(selection: $tabSelection){
                    RefineView()
                        .tag(0) // Tag for the RefineView tab
                    ExploreView()
                        .tag(1) // Tag for the ExploreView tab
                    NetworkView()
                        .tag(2) // Tag for the NetworkView tab
                    ChatView()
                        .tag(3) // Tag for the ChatView tab
                    ContactsView()
                        .tag(4) // Tag for the ContactsView tab
                }
                .overlay(alignment: .bottom) {
                    // CustomTabView for displaying tab selection buttons
                    CustomTabView(tabSelection: $tabSelection)
                }
            }
            
            Spacer(minLength: 0)
        }
    }
}

/// A preview provider for displaying a preview of the HomeView.
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
