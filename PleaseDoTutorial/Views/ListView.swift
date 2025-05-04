//
//  ListView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 4/5/2568 BE.
//

import SwiftUI

struct ListView: View {
    let title: String
    var body: some View {
        VStack(spacing: 0){
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, maxHeight : 32)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.orange)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white, lineWidth: 2)
                        }
                }
                .padding(.horizontal)
                .padding(.top)
        
            List {
                Text("Item 1")
                
                Text("Item 1")
                
                Text("Item 1")
            }
            .scrollContentBackground(.hidden)
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    ListView()
}
