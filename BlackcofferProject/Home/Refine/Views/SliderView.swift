//
//  SliderView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import SwiftUI

/// A slider view to select a value within a specified range.
struct SliderView: View {
    @State var sliderValue: Double = 10  // Initial value for the slider
    
    var body: some View {
        VStack {
            Text(
                String(format: "%.0f", sliderValue)  // Display the current slider value as text
            )
            .fontWeight(.bold)  // Apply bold font weight
            
            Slider(value: $sliderValue, in: 0...100, step: 1.0)  // Slider view with specified range and step
            
                // Customize the appearance of the slider
                .accentColor(Color("Background"))  // Set the slider's accent color
            
            HStack {
                Text("1 KM")  // Display the minimum value
                Spacer()
                Text("100 KM")  // Display the maximum value
            }
            .font(.headline)  // Apply headline font style
        }
        .foregroundColor(Color("Background"))  // Set the text color
    }
}

/// A preview provider for displaying a preview of the SliderView.
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
