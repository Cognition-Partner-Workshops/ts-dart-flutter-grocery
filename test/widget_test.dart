import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import 'package:grocery_app/main.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pump();

    expect(find.byType(GetMaterialApp), findsOneWidget);

    // Advance past the SplashController's delayed navigation timer so the
    // test framework does not fail on a pending timer at teardown.
    await tester.pump(const Duration(seconds: 11));
  });
}
