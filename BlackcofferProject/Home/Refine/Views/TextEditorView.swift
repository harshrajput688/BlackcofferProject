//
//  TextEditorView.swift
//  BlackcofferProject
//
//  Created by Harsh Rajput on 12/08/23.
//

import SwiftUI

/// A custom text editor view with a border overlay.
struct TextEditorView: View {
    @State private var textEditorData: String = "Hi community! I am open to new connections 😊"  // Initial text for the text editor
    
    var body: some View {
        VStack {
            TextEditor(text: $textEditorData)  // Bind the text editor's content to the state variable
                .foregroundColor(Color("Background"))  // Set text color
                .overlay {
                    // Border around the text editor
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color("notSelect"), lineWidth: 2)  // Border color and width
                }
        }
    }
}

/// A preview provider for displaying a preview of the TextEditorView.
struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
