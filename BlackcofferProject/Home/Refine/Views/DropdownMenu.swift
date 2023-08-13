//
//  DropdownMenu.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import SwiftUI

/// A customizable dropdown menu view.
struct DropdownMenu: View {
    @State private var isOptionPresented: Bool = false
    
    @Binding var selectedOption: DropdownMenuOption?  // The selected dropdown menu option
    
    let placeholder: String  // Placeholder text to display when no option is selected
    
    let option: [DropdownMenuOption]  // Array of dropdown menu options
    
    @State var selection: String = "1"
    
    var body: some View {
        Button {
            withAnimation {
                self.isOptionPresented.toggle()
            }
        } label: {
            HStack {
                Text(selectedOption == nil ? placeholder : selectedOption!.option)
                    .fontWeight(.medium)
                
                Spacer()
                Image(systemName: self.isOptionPresented ? "chevron.up" : "chevron.down")
                    .fontWeight(.medium)
            }
        }
        .foregroundColor(Color("Background"))
        .padding()
        .overlay {
            // Border around the dropdown menu button
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color("notSelect"), lineWidth: 2)
        }
        .overlay(alignment: .top) {
            VStack {
                if self.isOptionPresented {
                    Spacer(minLength: 60)
                    // Display the dropdown menu list
                    DropdownMenuList(options: self.option) { option in
                        self.isOptionPresented = false
                        self.selectedOption = option
                    }
                }
            }
        }
        if self.isOptionPresented {
            // Transparent overlay to handle touch events
            Rectangle()
                .frame(height: CGFloat(self.option.count * 32) > 300 ? 360 : CGFloat(self.option.count * 43))
                .foregroundColor(.white.opacity(0))
        }
    }
}

/// A preview provider for displaying a preview of the DropdownMenu.
struct DropdownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenu(selectedOption: .constant(nil), placeholder: "Yes I am avaliable", option: DropdownMenuOption.testAllOptions)
    }
}
