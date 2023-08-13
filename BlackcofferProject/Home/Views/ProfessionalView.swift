//
//  ProfessionalView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import SwiftUI

/// A view representing the "Professional" tab content.
struct ProfessionalView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("Professional".uppercased())
        }
    }
}

struct ProfessionalView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalView()
    }
}
