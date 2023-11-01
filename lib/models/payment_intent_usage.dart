enum PaymentIntentUsage {
  /// Use “on_session” if you intend to only reuse the payment method when your customer
  /// is present in your checkout flow.
  onSession,

  /// Use “off_session” if your customer may or may not be present in your checkout flow.
  offSession
}