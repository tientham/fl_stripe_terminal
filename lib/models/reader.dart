import 'package:fl_stripe_terminal/models/device_type.dart';
import 'package:fl_stripe_terminal/models/location.dart';
import 'package:fl_stripe_terminal/models/location_status.dart';

/// https://stripe.dev/stripe-terminal-android/external/com.stripe.stripeterminal.external.models/-reader/index.html
class Reader {
  final String? label;
  final DeviceType? deviceType;
  final LocationStatus? locationStatus;
  final double batteryLevel;
  final bool simulated;
  final bool availableUpdate;
  final String serialNumber;
  final String? locationId;
  final Location? location;

  const Reader({
    required this.locationStatus,
    required this.batteryLevel,
    required this.deviceType,
    required this.simulated,
    required this.availableUpdate,
    required this.serialNumber,
    required this.locationId,
    required this.location,
    required this.label,
  });
}