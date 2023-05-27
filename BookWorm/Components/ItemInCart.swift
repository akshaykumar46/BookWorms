//
//  ItemInCart.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct ItemInCart: View {
    @EnvironmentObject var cartManager:CartManager
    var book:Book
    var body: some View {
        HStack(spacing: 20) {
            Image(book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
                
            VStack(alignment: .leading,spacing: 10) {
                Text(book.name)
                    .bold()
                HStack {
                    Text("\(book.price) ₹")
                    Text("x\(book.quantity)")
                }
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.black)
                .onTapGesture {
                    
                    cartManager.removeFromCart(book: book)
                }
                
            
        }
        .padding(.horizontal)
        .frame(width: .infinity,alignment: .leading)
    }
}

struct ItemInCart_Previews: PreviewProvider {
    static var previews: some View {
        ItemInCart(book: bookList[0])
            .environmentObject(CartManager())
    }
}
