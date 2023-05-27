//
//  Cart.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 27/05/23.
//

import SwiftUI

struct Cart: View {
    var quantity:Int
    
    var body: some View {
        
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top ,5)
                
            if quantity>0{
                Text(String(quantity))
                    
                    .font(.caption2)
                    .bold()
                    .frame(width: 15,height: 15)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(30)
                
            }
                
            
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart(quantity: 10)
    }
}
