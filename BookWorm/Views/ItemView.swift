//
//  ItemView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct ItemView: View {
    var book:Book
    var body: some View {
        
        Image(book.image)
            
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(book:bookList[0])
    }
}
