//
//  PurposeItem.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 13/08/23.
//

import SwiftUI

/// A view representing a purpose item with toggle behavior.
struct PurposeItem: View {
    @State var purposeSelected: Bool = false  // State variable to track if the purpose is selected
    let purpose: String  // The purpose item text
    
    var body: some View {
        Button {
            withAnimation {
                self.purposeSelected.toggle()  // Toggle the selection state with animation
            }
        } label: {
            VStack {
                Text(purpose)
                    .padding(5)
                    .padding(.vertical, 10)
                    .frame(width: UIScreen.main.bounds.width / 3 - 20)  // Adjust the frame width
                    .foregroundColor(purposeSelected ? .white : Color("Background"))  // Change text color based on selection
                    .font(.headline)  // Apply headline font style
                    
                    // Overlay a rounded rectangle border for selected or unselected state
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(purposeSelected ? Color("Background") : Color("notSelect"), lineWidth: 2)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(purposeSelected ? Color("Background") : .white)
                    )
            }
        }
    }
}

/// A preview provider for displaying a preview of the PurposeItem view.
struct PurposeItem_Previews: PreviewProvider {
    static var previews: some View {
        PurposeItem(purpose: "Business")  // Preview the PurposeItem with a sample purpose
    }
}
