//
//  HomeView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 4/5/2568 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack(){
            TabView {
                Text("Page 1")
                
                Text("Page 2")
                
                Text("Page 3")
            }
            .tabViewStyle(.page)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        print("Logout")
                    } label: {
                        Image(systemName: "person.circle")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Logout")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationDestination(for:
                String.self) { _ in
                Text("New View here")
            }
        }
    }
}

#Preview {
    HomeView()
}
