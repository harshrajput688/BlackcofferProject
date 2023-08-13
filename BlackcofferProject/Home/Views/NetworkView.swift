//
//  NetworkView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import SwiftUI

/// A view representing the "Network" tab content.
struct NetworkView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                HeaderView(headerTitle: "Network")
                TempView()
            }
        }
    }
}

struct NetworkView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkView()
    }
}
