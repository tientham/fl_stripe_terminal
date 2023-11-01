/// https://stripe.com/docs/api/payment_intents/object#payment_intent_object-status
enum PaymentIntentStatus {
  /// The [PaymentIntent] was canceled.
  canceled,

  /// The [PaymentIntent] is in the middle of full EMV processing.
  processing,

  /// Next step: capture the [PaymentIntent] on your backend via the Stripe API.
  requiresCapture,

  /// Next step: confirm the payment by calling [Terminal.confirmPaymentIntent].
  requiresConfirmation,

  /// Next step: collect a payment method by calling [Terminal.collectPaymentMethod].
  requiresPaymentMethod,

  /// Next step: the payment requires additional actions, such as authenticating with 3D Secure.
  ///
  /// PaymentIntents collected with the Terminal SDK should not end in the requires_action status.
  requiresAction,

  /// The [PaymentIntent] succeeded.
  succeeded,
}