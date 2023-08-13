//
//  DropdownMenuListRow.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import SwiftUI

/// A view representing a single row (option) in a dropdown menu list.
struct DropdownMenuListRow: View {
    let option: DropdownMenuOption  // A single dropdown menu option
    let onSelectAction: (_ option: DropdownMenuOption) -> Void  // Callback action when the option is selected
    
    var body: some View {
        Button {
            self.onSelectAction(option)
        } label: {
            Text(option.option)
                .frame(maxWidth: .infinity, alignment: .leading)  // Ensure the text fills the available width
        }
        .foregroundColor(Color("Background"))  // Set text color
        .padding(.vertical, 5)  // Add vertical padding
        .padding(.horizontal)  // Add horizontal padding
    }
}

/// A preview provider for displaying a preview of the DropdownMenuListRow.
struct DropdownMenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuListRow(option: DropdownMenuOption.testSingleOption, onSelectAction: { _ in })
    }
}
