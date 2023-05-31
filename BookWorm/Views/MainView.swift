//
//  MainView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 31/05/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var cartManager = CartManager()
//    @State var tabSelection: Tabs = .tab1
    var body: some View {
            TabView {
                ContentView()
                    .environmentObject(cartManager)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                ProfileView(customer: customer1)
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
