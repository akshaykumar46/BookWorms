//
//  ContentView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var body: some View {
        let columns=[GridItem(.adaptive(minimum: 160),spacing: 30)]
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20) {
                    ForEach(bookList,id: \.id){ book in

                            BookCard(book: book)
                                .environmentObject(cartManager)
    
                    }
                }
                .padding(20)
            }
            .navigationTitle(Text("BookWorm"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    Cart(quantity: cartManager.books.count)
                }
                
                
            }
        }
        
        
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
