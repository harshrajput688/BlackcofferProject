//
//  PurposeView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import SwiftUI

/// A view displaying a grid of purpose items.
struct PurposeView: View {
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]  // Define the grid layout columns
    
    var body: some View {
        LazyVGrid(columns: column) {  // Use LazyVGrid to create a grid layout
            ForEach(purposes, id: \.id) { purpose in
                PurposeItem(purpose: purpose.purposeItem)  // Display each purpose item using PurposeItem view
            }
        }
    }
}

/// A preview provider for displaying a preview of the PurposeView.
struct PurposeView_Previews: PreviewProvider {
    static var previews: some View {
        PurposeView()
    }
}
