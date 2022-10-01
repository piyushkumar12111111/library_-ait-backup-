import 'package:flutter/material.dart';
import 'screens/onboarding/onboarding.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      home: Builder(
        builder: (BuildContext context) {
          final screenHeight = MediaQuery.of(context).size.height;
          return Onboarding(screenHeight: screenHeight);
        },
      ),
    );
  }
}
