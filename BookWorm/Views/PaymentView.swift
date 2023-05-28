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
            Button(action: {
                razorpayManager.makePayment(
                    amount: 10000, // Amount in paise (e.g., 10000 for ₹100)
                    name: "ExampleApp",description: "Payment Description",email: "CUSTOMER_EMAIL_ADDRESS", contact: "CUSTOMER_PHONE_NUMBER"
                                    )
                                }) {
                                    HStack(spacing: 20){
                                        Text("Make Payment")
//
                                        Image(systemName: "paperplane")
//
                                    }
                                    .frame(width: 200,height: 40)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                }
                            }
                        }
                    }


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton()
    }
}
