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
            if cartManager.cartItems.count == 0 {
                Text("your cart is empty!!!")
            }
            else {
                ScrollView {
                    ForEach(cartManager.cartItems,id:\.id){ item in
                        ItemRow(item: item)
                    }
                }
                Spacer()
                HStack{
                    Text("Total Cart")
                    Text("\(cartManager.totalPrice) ₹")
                }
                PaymentButton()
                    .padding()
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
