//
//  PaymentManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 31/05/23.
//

import PassKit

public typealias PaymentCompletionHandler = (Bool) -> Void

public class PaymentManager: NSObject {
    
    override public init() { }
    
    private var paymentController: PKPaymentAuthorizationController?
    private var paymentStatus = PKPaymentAuthorizationStatus.failure
    private var completionHandler: PaymentCompletionHandler?
    
    /// Open an Apple Pay action sheet and start a payment request.
    public func startPayment(paymentRequest: PKPaymentRequest,
                             completion: @escaping PaymentCompletionHandler) {
        
        completionHandler = completion
        
        // Display our payment request
        paymentController = PKPaymentAuthorizationController(paymentRequest: paymentRequest)
        paymentController?.delegate = self
        paymentController?.present()
    }
}

extension PaymentManager: PKPaymentAuthorizationControllerDelegate {
    
    public func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController,
                                               didAuthorizePayment payment: PKPayment,
                                               completion: @escaping (PKPaymentAuthorizationStatus) -> Void) {
        
        // Perform some very basic validation on the provided contact information
        if payment.shippingContact?.emailAddress == nil || payment.shippingContact?.phoneNumber == nil {
            paymentStatus = .failure
        } else {
            // Here you would send the payment token to your server or payment provider to process
            // Once processed, return an appropriate status in the completion handler (success, failure, etc)
            paymentStatus = .success
        }
        
        completion(paymentStatus)
    }
    
    public func paymentAuthorizationControllerDidFinish(_ controller: PKPaymentAuthorizationController) {
        controller.dismiss {
            DispatchQueue.main.async {
                self.paymentStatus == .success ?
                self.completionHandler?(true) :
                self.completionHandler?(false)
            }
        }
    }
}
