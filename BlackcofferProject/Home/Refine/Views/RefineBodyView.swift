//
//  TempView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 11/08/23.
//

import SwiftUI

/// A view displaying the body content for the "Refine" section of the BlackcofferProject app.
struct RefineBodyView: View {
    @State private var singelOption: DropdownMenuOption? = nil
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Background color
            Color.white
            
            // ScrollView to allow scrolling of content
            ScrollView {
                VStack {
                    // Section: Select Your Availability
                    VStack(alignment: .leading) {
                        Text("Select Your Availability")
                            .foregroundColor(Color("Background"))
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        // DropdownMenu for selecting availability option
                        VStack {
                            DropdownMenu(
                                selectedOption: self.$singelOption,
                                placeholder: "Available | Hey Let's Connect",
                                option: DropdownMenuOption.testAllOptions)
                        }
                        
                        // Section: Add Your Status
                        Text("Add Your Status")
                            .foregroundColor(Color("Background"))
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        // TextEditorView for adding status
                        TextEditorView()
                            .frame(width: .infinity, height: 100)
                        
                        // Section: Select Hyperlocal Distance
                        Text("Select Hyperlocal Distance")
                            .foregroundColor(Color("Background"))
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        // SliderView for selecting hyperlocal distance
                        SliderView()
                        
                        // Section: Select Purpose
                        Text("Select Perpose")
                            .foregroundColor(Color("Background"))
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        // PurposeView for selecting purpose
                        PurposeView()
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    // Save & Explore button
                    Button {
                        // Handle button action
                    } label: {
                        Text("Save & Explore")
                            .font(.headline)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Background"))
                            )
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

/// A preview provider for displaying a preview of the RefineBodyView.
struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        RefineBodyView()
    }
}
