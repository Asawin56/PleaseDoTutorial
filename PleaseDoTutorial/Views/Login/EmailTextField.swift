//
//  EmailTextField.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 5/5/2568 BE.
//

import SwiftUI

struct EmailTextField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(height: 15)
            
            TextField(placeholder, text: $text)
                .submitLabel(.done)
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
                .background(.clear)
        }
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray, lineWidth: 0.3)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.background)
                )
        )
    }
}

#Preview {
    EmailTextField(placeholder: "Email", text: .constant(""))
}
