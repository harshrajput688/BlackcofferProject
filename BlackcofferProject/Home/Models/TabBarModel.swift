//
//  TabBarModel.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 11/08/23.
//

import Foundation

/// A model representing an item in the tab bar.
struct TabBarItemModel: Equatable {
    let id: String = UUID().uuidString
    let image: String
    let title: String
}

/// An array of tab bar items used in the application.
let tabBarItems: [TabBarItemModel] = [
    TabBarItemModel(image: "checklist", title: "Refine"),
    TabBarItemModel(image: "eye", title: "Explore"),
    TabBarItemModel(image: "network", title: "Network"),
    TabBarItemModel(image: "text.bubble", title: "Chat"),
    TabBarItemModel(image: "person.text.rectangle", title: "Contact")
]
