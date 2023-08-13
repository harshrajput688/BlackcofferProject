//
//  DropdownMenuList.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import SwiftUI

/// A view representing the list of options in a dropdown menu.
struct DropdownMenuList: View {
    let options: [DropdownMenuOption]  // Array of dropdown menu options
    let onSelectAction: (_ option: DropdownMenuOption) -> Void  // Callback action when an option is selected
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 2) {
                ForEach(options) { option in
                    // Display each option as a DropdownMenuListRow
                    DropdownMenuListRow(option: option, onSelectAction: self.onSelectAction)
                }
            }
        }
        // Limit the height of the dropdown menu list based on the number of options
        .frame(height: CGFloat(self.options.count * 32) > 300 ? 300 : CGFloat(self.options.count * 32))
        .frame(height: 200)  // Set a fixed height for the dropdown menu list
        .padding(.vertical, 5)
        .overlay {
            // Overlay to add a border around the dropdown menu list
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("notSelect"), lineWidth: 2)  // Border color and width
            }
        }
    }
}

/// A preview provider for displaying a preview of the DropdownMenuList.
struct DropdownMenuList_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuList(options: DropdownMenuOption.testAllOptions, onSelectAction: { _ in })
    }
}
