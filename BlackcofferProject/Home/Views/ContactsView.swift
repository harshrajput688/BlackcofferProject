//
//  ContactsView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import SwiftUI

/// A view representing the "Contacts" tab content.
struct ContactsView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                HeaderView(headerTitle: "Contacts")
                TempView()
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
