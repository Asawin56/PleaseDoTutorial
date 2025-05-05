//
//  LoginView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 5/5/2568 BE.
//

import SwiftUI

struct LoginView: View {
    @State private var text = "Don't have an account?"
    @State private var prompt = "Sign up here"
    @State private var isLoggingIn = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            
            LoginTitleView()
            
            Text("Login")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.horizontal)
            
            if isLoggingIn {
                LoginFields(email: .constant(""), pw: .constant(""))
            } else{
                SignUpFields(fname: .constant(""), lname: .constant(""), email: .constant(""), pw: .constant(""))
            }
            
            HStack{
                Spacer()
                
                LoginButton(title: "Login") {
                    print("Login button tapped")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            TogglePromptView(text: $text, prompt: $prompt, isLoggingIn: $isLoggingIn)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
