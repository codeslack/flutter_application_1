import 'package:flutter/material.dart';
import 'package:flutter_application_1/part2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
