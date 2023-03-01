import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:ketchup_starter/common/env.dart';
import 'package:ketchup_starter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    var env = await Environment.instance();
    await tester.pumpWidget(MyApp(env));
  });
}
