//
//  ApplePayButton.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 31/05/23.
//

import SwiftUI
import PassKit

struct ApplePayButton: View {
    var action: ()-> Void
    var body: some View {
        Respresentable(action: action)
            .frame(minWidth: 100,maxWidth:400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
            
    }
}

struct ApplePayButton_Previews: PreviewProvider {
    static var previews: some View {
        ApplePayButton(action: {})
    }
}

extension ApplePayButton{
    struct Respresentable:UIViewRepresentable{
        var action: ()-> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    class Coordinator:NSObject{
        var action:()->Void
        var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        @objc
        func callback(_ sender:Any){
            action()
        }
    }
}
