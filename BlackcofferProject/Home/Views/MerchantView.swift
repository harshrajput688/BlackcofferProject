//
//  MerchantView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 09/08/23.
//

import SwiftUI

/// A view representing the "Merchant" tab content.
struct MerchantView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("Merchant".uppercased())
        }
    }
}

struct MerchantView_Previews: PreviewProvider {
    static var previews: some View {
        MerchantView()
    }
}
