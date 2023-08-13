//
//  IndividualView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import SwiftUI

/// A view that displays individual profiles and search functionality.
struct IndividualView: View {
    @State var textFieldData: String = ""
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search", text: $textFieldData)
                            .padding(.vertical, 5)
                    }
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(.leading, 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 2)
                    }
                    
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                }
                .padding(.top)
                .padding(.horizontal, 30)
                
                ForEach(nerPersons, id: \.id) { person in
                    CardView(nearPerson: person)
                }
            }
        }
    }
}

/// A preview provider for the IndividualView.
struct IndividualView_Previews: PreviewProvider {
    static var previews: some View {
        IndividualView()
    }
}
