import 'package:fl_stripe_terminal/models/address.dart';

/// https://stripe.dev/stripe-terminal-android/external/com.stripe.stripeterminal.external.models/-location/index.html
class Location {
  final Address? address;
  final String? displayName;
  final String? id;
  final bool? livemode;
  final Map<String, String> metadata;

  const Location({
    required this.address,
    required this.displayName,
    required this.id,
    required this.livemode,
    required this.metadata,
  });
}