//
//  DropdownMenuOptions.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import Foundation

/// A model representing a dropdown menu option.
struct DropdownMenuOption: Identifiable, Hashable {
    let id = UUID().uuidString
    let option: String  // The text of the dropdown menu option
}

extension DropdownMenuOption {
    /// A test single dropdown menu option.
    static let testSingleOption: DropdownMenuOption = DropdownMenuOption(option: "Available | Hey Let's Connect")
    
    /// An array of test dropdown menu options.
    static let testAllOptions: [DropdownMenuOption] = [
        DropdownMenuOption(option: "Available | Hey Let's Connect"),
        DropdownMenuOption(option: "Not Available | Connect Later"),
        DropdownMenuOption(option: "Available | How are you"),
        DropdownMenuOption(option: "Available | but busy Now"),
        DropdownMenuOption(option: "Stuck | Hey Need help")
    ]
}
