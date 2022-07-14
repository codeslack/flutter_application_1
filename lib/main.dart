import 'package:flutter/material.dart';

void main() {
  runApp(const PractiseApp());
}

class PractiseApp extends StatelessWidget {
  const PractiseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.amber,
          child: const Center(
            child: Text(
              "Hello there",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
