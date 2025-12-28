import 'package:flutter/material.dart';
import 'pages/getstarted.dart';  // Import GetStarted page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),  // Set GetStarted page as home
    );
  }
}
