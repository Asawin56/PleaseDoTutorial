//
//  LoginTitleView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 5/5/2568 BE.
//

import SwiftUI

struct LoginTitleView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Image("PleaseDoLogo")
                .resizable()
                .scaledToFit()
            
            VStack(spacing: 3) {
                Text("Please Do")
                    .font(.title)
                    .fontWeight(.semibold)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(maxWidth: 175, maxHeight: 0.7)
                
                Text("A better todo list")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
        }
        .frame(maxHeight: 110)
        .padding(.horizontal)
    }
}

#Preview {
    LoginTitleView()
}
