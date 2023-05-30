//
//  Book.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import Foundation

struct Book:Identifiable{
    var id=UUID()
    var name:String
    var image:String
    var price:Int
}

var bookList=[Book(name: "Everything is fucked Up", image: "book1", price: 199),Book(name: "It all end with us", image: "book2", price: 69),Book(name: "Ikigai", image: "book3", price: 99),Book(name: "Game of throne", image: "book4", price: 99),Book(name: "Atomic Habits", image: "book5", price: 199),Book(name: "We all see world in a thousand different ways", image: "book6", price: 89),Book(name: "Quiet", image: "book7", price: 99),Book(name: "Seven husbands", image: "book8", price: 199)]

