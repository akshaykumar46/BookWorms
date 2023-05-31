//
//  PaymentView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 28/05/23.
//

import SwiftUI

struct RazorPayPaymentButton: View {
    @StateObject private var razorpayManager = RazorPayPaymentManager()
    
    var body: some View {
        VStack {
            Button{
                razorpayManager.makePayment(amount: 10000,name: "ExampleApp",description: "Payment Description",email: "CUSTOMER_EMAIL_ADDRESS", contact: "CUSTOMER_PHONE_NUMBER")
            } label: {
                    HStack{
                        Text("Check out with")
                            .font(.title3)
//                            .bold()
                        Image("razorpayLogo")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .clipShape(Circle())
//                            .scaledToFit()
                        Text("RazorPay")
                            .font(.title3)
//                            .bold()
                    }
                    .frame(minWidth: 100,maxWidth: 400)
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                   }
             }
    }
}


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        RazorPayPaymentButton()
    }
}
