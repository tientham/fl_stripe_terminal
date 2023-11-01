enum CaptureMethod {
  /// Stripe automatically captures funds when the customer authorizes the payment.
  automatic,

  /// Place a hold on the funds when the customer authorizes the payment, but don’t capture
  /// the funds until later. Will require an explicit call to capture payments.
  manual
}