package com.domingoguzman.ecommerce.service;

import com.domingoguzman.ecommerce.dto.PaymentInfo;
import com.domingoguzman.ecommerce.dto.Purchase;
import com.domingoguzman.ecommerce.dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);

    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;
}
