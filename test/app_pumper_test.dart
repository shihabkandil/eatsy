import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'app_pumper.dart';

void main() {
  testWidgets("AppPumper pumps MaterialApp with child", (widgetTester) async {
    // Arrange
    String text = 'Sample';

    // Act
    await widgetTester.pumpWidget(AppPumper(child: Text(text)));

    // Verify
    expect(find.text(text), findsOneWidget);
  });
}
