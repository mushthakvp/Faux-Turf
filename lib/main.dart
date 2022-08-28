import 'package:flutter/material.dart';
import 'package:turf/app/screens/onboard/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faux Turf',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const OnboardScreen(),
    );
  }
}
