//
//  HeaderView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 11/08/23.
//

import SwiftUI

/// A view representing the header section with title and location information.
struct HeaderView: View {
    var headerTitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 40, height: 30)
            
            VStack(alignment: .leading) {
                Text(headerTitle)
                    .font(.body)
                
                HStack {
                    Image(systemName: "location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    
                    Text("San Francisco, California")
                        .font(.footnote)
                }
            }
            .fontWeight(.bold)
            .padding(.leading)
            
            Spacer()
            
            Image(systemName: "bell")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 30)
        }
        .background(Color("Background"))
        .frame(height: 30)
        .foregroundColor(.white)
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(headerTitle: "Explore")
    }
}
