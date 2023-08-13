//
//  TempView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 13/08/23.
//

import SwiftUI

/// A temporary view to demonstrate adding elements.
struct TempView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("You can add elements here as well!")
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

struct TempViewPreviews: PreviewProvider {
    static var previews: some View {
        TempView()
    }
}
