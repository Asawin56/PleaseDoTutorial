//
//  KeyboardView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 5/5/2568 BE.
//

import SwiftUI

struct KeyboardView: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(.roundedBorder)
            .submitLabel(.done)
            .textInputAutocapitalization(.words)
            .keyboardType(.default) 
            .background(Color.clear)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    KeyboardView(placeholder: "First name", text: .constant(""))
}
