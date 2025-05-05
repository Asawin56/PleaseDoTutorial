//
//  LoginView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 5/5/2568 BE.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm = LoginVM()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            
            LoginTitleView()
            
            Text(vm.titleText)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.horizontal)
            
            if vm.isLoggingIn {
                LoginFields(email: .constant(""), pw: .constant(""))
            } else{
                SignUpFields(fname: .constant(""), lname: .constant(""), email: .constant(""), pw: .constant(""))
            }
            
            HStack{
                Spacer()
                
                LoginButton(title: vm.titleText) {
                    print("Login button tapped")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            TogglePromptView(text: $vm.toggleText, prompt: $vm.prompt, isLoggingIn: $vm.isLoggingIn)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
