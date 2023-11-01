
import 'fl_stripe_terminal_platform_interface.dart';

class FlStripeTerminal {
  Future<String?> getPlatformVersion() {
    return FlStripeTerminalPlatform.instance.getPlatformVersion();
  }
}
