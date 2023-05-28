//
//  PaymentManager.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 28/05/23.
//

import Foundation
import Razorpay

class PaymentManager: ObservableObject, RazorpayPaymentCompletionProtocol {
    private var razorpay: RazorpayCheckout?
    
    init() {
        razorpay = RazorpayCheckout.initWithKey("YOUR_RAZORPAY_API_KEY", andDelegate: self)
    }
    
    func makePayment(amount: Int, name: String, description: String, email: String, contact: String) {
        guard let razorpay = razorpay else { return }
        
        let options: [String: Any] = [
            "amount": amount,
            "currency": "INR",
            "description": description,
            "image": "YOUR_MERCHANT_LOGO_URL",
            "name": name,
            "prefill": [
                "email": email,
                "contact": contact
            ],
            "theme": [
                "color": "#F37254" // Customize the color as per your app's theme
            ]
        ]
        
        razorpay.open(options)
    }
    
    func onPaymentSuccess(_ paymentId: String) {
        // Payment success handling
    }
    
    func onPaymentError(_ code: Int32, description: String) {
        // Payment error handling
    }
}
