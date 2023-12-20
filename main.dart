import 'package:flutter/material.dart';

import 'welcomePages/welcome_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Checker',
      theme: ThemeData(

        backgroundColor: Colors.indigo,

      ),
      home: const WelcomePages(),
    );
  }
}

