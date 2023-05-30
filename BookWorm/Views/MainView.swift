//
//  MainView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 31/05/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var cartManager = CartManager()
    var body: some View {
        TabView{
            ContentView()
                .environmentObject(cartManager)
                .tabItem{
                    Label("home", systemImage: "house")
                }
            ProfileView(customer: customer1)
                .tabItem{
                    Label("", systemImage: "person.crop.circle")
                        .foregroundColor(.red)
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
