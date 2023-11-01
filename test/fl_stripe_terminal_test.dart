import 'package:flutter_test/flutter_test.dart';
import 'package:fl_stripe_terminal/fl_stripe_terminal.dart';
import 'package:fl_stripe_terminal/fl_stripe_terminal_platform_interface.dart';
import 'package:fl_stripe_terminal/fl_stripe_terminal_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlStripeTerminalPlatform
    with MockPlatformInterfaceMixin
    implements FlStripeTerminalPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlStripeTerminalPlatform initialPlatform = FlStripeTerminalPlatform.instance;

  test('$MethodChannelFlStripeTerminal is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlStripeTerminal>());
  });

  test('getPlatformVersion', () async {
    FlStripeTerminal flStripeTerminalPlugin = FlStripeTerminal();
    MockFlStripeTerminalPlatform fakePlatform = MockFlStripeTerminalPlatform();
    FlStripeTerminalPlatform.instance = fakePlatform;

    expect(await flStripeTerminalPlugin.getPlatformVersion(), '42');
  });
}
