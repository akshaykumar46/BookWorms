//
//  CartManager.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import Foundation

class CartManager:ObservableObject{
    @Published private(set) var books:[Book]=[]
    @Published private(set) var totalPrice:Int=0
    
    func addToCart(book:Book){
        books.append(book)
        totalPrice+=book.price
    }
    func removeFromCart(book:Book){
        books=books.filter{ $0.id != book.id }
        totalPrice-=book.price
    }
}
