//
//  CartView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager:CartManager
    var body: some View {
        ScrollView{
            if cartManager.books.count == 0 {
                Text("your cart is empty!!!")
            }
            else {
                ScrollView {
                    ForEach(cartManager.books,id:\.id){ book in
                        ItemInCart(book: book)
                    }
                }
                Spacer()
                HStack{
                    Text("Total Cart")
                    Text("\(cartManager.totalPrice) ₹")
                }
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
