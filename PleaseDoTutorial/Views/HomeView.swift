//
//  HomeView.swift
//  PleaseDoTutorial
//
//  Created by Asawin Krongprasert on 4/5/2568 BE.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(){
            TabView {
                ListView(title: "Todo")
                
                ListView(title: "In Progress")
                
                ListView(title: "Done")
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
                        print("Navigate to new item")
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
