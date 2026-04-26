import 'package:flutter/material.dart';
import 'screens/presentation_viewer.dart';

void main() {
  runApp(const PresentationApp());
}

class PresentationApp extends StatelessWidget {
  const PresentationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bajaj Finance Presentation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF003366),
        scaffoldBackgroundColor: Colors.grey.shade100,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF003366),
          secondary: const Color(0xFFE31837),
        ),
      ),
      home: const PresentationViewer(),
    );
  }
}
