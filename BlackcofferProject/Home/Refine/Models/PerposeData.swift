//
//  PerposeData.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import Foundation

/// A model representing a purpose item for the dropdown menu.
struct Perpose {
    let id: String = UUID().uuidString
    let purposeItem: String  // The purpose item text
}

/// An array of purpose items for the dropdown menu.
let purposes: [Perpose] = [
    Perpose(purposeItem: "Coffee"),
    Perpose(purposeItem: "Business"),
    Perpose(purposeItem: "Hobbies"),
    Perpose(purposeItem: "Friendship"),
    Perpose(purposeItem: "Movies"),
    Perpose(purposeItem: "Dining"),
    Perpose(purposeItem: "Dating")
]
