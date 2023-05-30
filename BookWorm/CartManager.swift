//
//  CartManager.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import Foundation

class CartManager:ObservableObject{
    @Published private(set) var cartItems:[ItemInCart]=[]
    @Published private(set) var totalPrice:Int=0
    @Published private(set) var totalItemsInCart=0
    
    func addToCart(book:Book){
        if cartItems.filter({ $0.book.id == book.id }).count != 0{
            for index in cartItems.indices {
                if cartItems[index].book.id == book.id {
                    cartItems[index].increaseQuantityByOne()
                }
            }
        }
        else{
            cartItems.append(ItemInCart(book: book, quantity: 1))
        }
        totalPrice+=book.price
        totalItemsInCart += 1
    }
    func removeFromCart(book:Book){
        var isOnlyOneCopy=false
        for index in cartItems.indices {
            if cartItems[index].book.id == book.id {
                
                if cartItems[index].quantity > 1{
                    cartItems[index].decreaseQuantityByOne()
                    
                }
                else{
                    isOnlyOneCopy=true
                }
            }
            
        }
        if isOnlyOneCopy{
            cartItems.removeAll { $0.book.id == book.id }
        }
        totalPrice-=book.price
        totalItemsInCart -= 1
    }
}
