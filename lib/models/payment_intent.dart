import 'package:fl_stripe_terminal/models/capture_method.dart';
import 'package:fl_stripe_terminal/models/confirmation_method.dart';
import 'package:fl_stripe_terminal/models/payment_intent_status.dart';
import 'package:fl_stripe_terminal/models/payment_intent_usage.dart';

/// https://stripe.dev/stripe-terminal-android/external/com.stripe.stripeterminal.external.models/-payment-intent/index.html
class PaymentIntent {

  final String id;
  final double amount;
  final double? amountCapturable;
  final double? amountReceived;
  final DateTime created;
  final PaymentIntentStatus status;
  final double? applicationFeeAmount;
  final double? amountTip;
  final String? statementDescriptor;
  final String? statementDescriptorSuffix;
  final Map<String, String> metadata;
  final String? applicationId;
  final CaptureMethod captureMethod;
  final String? cancellationReason;
  final DateTime? canceledAt;
  final String? clientSecret;
  final ConfirmationMethod? confirmationMethod;
  final String currency;
  final String? customerId;
  final String? description;
  final String? invoiceId;
  final String? onBehalfOf;
  final String? paymentMethodId;
  final String? reviewId;
  final String? receiptEmail;
  final PaymentIntentUsage? setupFutureUsage;
  final String? transferGroup;

  const PaymentIntent({
    required this.id,
    required this.amount,
    required this.amountCapturable,
    required this.amountReceived,
    required this.created,
    required this.status,
    required this.applicationFeeAmount,
    required this.amountTip,
    required this.statementDescriptor,
    required this.statementDescriptorSuffix,
    this.metadata = const {},
    required this.applicationId,
    required this.captureMethod,
    required this.cancellationReason,
    required this.canceledAt,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.currency,
    required this.customerId,
    required this.description,
    required this.invoiceId,
    required this.onBehalfOf,
    required this.paymentMethodId,
    required this.reviewId,
    required this.receiptEmail,
    required this.setupFutureUsage,
    required this.transferGroup,
  });
}