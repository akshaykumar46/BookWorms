//
//  PaymentView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 28/05/23.
//

import SwiftUI

struct PaymentButton: View {
    @StateObject private var razorpayManager = PaymentManager()
    
    var body: some View {
        VStack {
            Button{
                razorpayManager.makePayment(amount: 10000,name: "ExampleApp",description: "Payment Description",email: "CUSTOMER_EMAIL_ADDRESS", contact: "CUSTOMER_PHONE_NUMBER")
            } label: {
                    HStack{
                        Text("Pay with")
                        Image("razorpayLogo")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .clipShape(Circle())
//                            .scaledToFit()
                        Text("RazorPay")
                    }
                    .frame(width: 250,height: 40)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                   }
             }
    }
}


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton()
    }
}
