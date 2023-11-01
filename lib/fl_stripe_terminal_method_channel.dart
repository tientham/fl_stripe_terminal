import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fl_stripe_terminal_platform_interface.dart';

/// An implementation of [FlStripeTerminalPlatform] that uses method channels.
class MethodChannelFlStripeTerminal extends FlStripeTerminalPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fl_stripe_terminal');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
