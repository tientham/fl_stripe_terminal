import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fl_stripe_terminal_method_channel.dart';

abstract class FlStripeTerminalPlatform extends PlatformInterface {
  /// Constructs a FlStripeTerminalPlatform.
  FlStripeTerminalPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlStripeTerminalPlatform _instance = MethodChannelFlStripeTerminal();

  /// The default instance of [FlStripeTerminalPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlStripeTerminal].
  static FlStripeTerminalPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlStripeTerminalPlatform] when
  /// they register themselves.
  static set instance(FlStripeTerminalPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
