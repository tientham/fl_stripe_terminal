enum ConfirmationMethod {
  /// After next_actions are handled, no additional confirmation is required to complete the payment.
  automatic,

  /// All payment attempts must be made using a secret key. The PaymentIntent returns to the
  /// requires_confirmation state after handling next_actions, and requires your server to
  /// initiate each payment attempt with an explicit confirmation.
  manual,
}