//
//  BookCard.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct BookCard: View {
    @EnvironmentObject var cartManager:CartManager
    var book: Book
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            ZStack(alignment: .bottom) {
                
                    Image(book.image)
                        .resizable()
                        .frame(width: 180)
                        .scaledToFit()
                        .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text(book.name)
                        .bold()
                    Text("\(book.price) ₹")
                        .frame(width:150,alignment: .trailing)
                        
                }
                .padding()
                .frame(width:180,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
                
                
            }
            .frame(width: 180,height: 280)
            .shadow(radius: 5)
         
            Button {
                cartManager.addToCart(book: book)
            }
        label: {
                Image(systemName: "plus")
                .padding(10)
                .background(.black)
                .cornerRadius(50)
                .foregroundColor(.white)
                .padding()
            
            }
            
        }
        
            
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: bookList[0])
            .environmentObject(CartManager())
    }
}
