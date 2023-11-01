import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fl_stripe_terminal/fl_stripe_terminal_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFlStripeTerminal platform = MethodChannelFlStripeTerminal();
  const MethodChannel channel = MethodChannel('fl_stripe_terminal');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
