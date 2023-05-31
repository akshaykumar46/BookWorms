//
//  ItemRow.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject var cartManager:CartManager
    var item:ItemInCart
    var body: some View {
        HStack(spacing: 20) {
            Image(item.book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
                
            VStack(alignment: .leading,spacing: 10) {
                Text(item.book.name)
                    .bold()
                    Text("\(item.book.price*item.quantity) ₹")

            }
            Spacer()
            HStack {
                Image(systemName: "minus.circle")
                    .foregroundColor(.black)
                    .onTapGesture {
                        
                        cartManager.removeFromCart(book: item.book)
                    }
                Text("x\(item.quantity)")
                Image(systemName: "plus.circle")
                    .foregroundColor(.black)
                    .onTapGesture {
                        
                        cartManager.addToCart(book: item.book)
                    }
            }
            
        }
        .padding(.horizontal)
        .frame(width: .infinity,alignment: .leading)
    }
}

struct ItemInCart_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: ItemInCart(book: bookList[0], quantity: 1))
            .environmentObject(CartManager())
    }
}
