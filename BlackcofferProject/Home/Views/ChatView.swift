//
//  ChatView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import SwiftUI

/// A view representing the "Chat" tab content.
struct ChatView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                HeaderView(headerTitle: "Chat")
                TempView()
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
