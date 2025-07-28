import 'package:flutter/material.dart';
import 'package:crash_course/gradient_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.amber,
        body: GradientBackgroundContainer(
          colors: [Colors.deepOrange, Colors.deepPurple],
        ),
      ),
    );
  }
}
