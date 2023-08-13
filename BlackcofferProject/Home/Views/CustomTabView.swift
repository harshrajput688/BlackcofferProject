//
//  CustomTabView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 10/08/23.
//

import SwiftUI

/// A custom tab bar view for navigating between different tabs.
struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animatioNamespace
    
    var body: some View {
        ZStack {
            HStack(spacing: 15) {
                ForEach(Array(zip(tabBarItems.indices, tabBarItems)), id: \.0) { index, item in
                    Button {
                        withAnimation {
                            tabSelection = index
                        }
                    } label: {
                        HStack {
                            VStack {
                                Image(systemName: tabSelection == index ? item.image : item.image)
                                    .fontWeight(tabSelection == index ? .bold : .none)
                                Text(item.title)
                            }
                        }
                    }
                    .foregroundColor(tabSelection == index ? Color("Background") : Color("lighter"))
                }
            }
            .font(.body)
            .frame(width: UIScreen.main.bounds.width)
            .padding(.horizontal)
            .padding(.top)
            .background(Color.white)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(tabSelection: .constant(0))
    }
}
