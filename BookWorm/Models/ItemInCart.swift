//
//  ItemInCart.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 31/05/23.
//

import Foundation

struct ItemInCart:Identifiable{
    var id = UUID()
    var book:Book
    var quantity:Int
    
    init(book: Book, quantity: Int) {
        self.book = book
        self.quantity = quantity
    }
    mutating func increaseQuantityByOne(){
        self.quantity+=1
    }
    mutating func decreaseQuantityByOne(){
        self.quantity-=1
    }
    
}

//var itemList=[ItemInCart(book: bookList[0], quantity: 1)]
