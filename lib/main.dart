import 'package:flutter/material.dart';
import 'package:settings_ui/screens/settings/view/settings_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SettingsUI(),
      },
    ),
  );
}