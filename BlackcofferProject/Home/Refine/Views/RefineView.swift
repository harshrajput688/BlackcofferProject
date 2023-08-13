//
//  RefineView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import SwiftUI

/// A view displaying the "Refine" section of the BlackcofferProject app.
struct RefineView: View {
    var body: some View {
        ZStack {
            // Background color
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                // HeaderView displaying the title "Refine"
                HeaderView(headerTitle: "Refine")
                
                // RefineBodyView for displaying the content of the "Refine" section
                RefineBodyView()
            }
        }
    }
}

/// A preview provider for displaying a preview of the RefineView.
struct RefineView_Previews: PreviewProvider {
    static var previews: some View {
        RefineView()
    }
}
