import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(const PractiseApp());
}

class PractiseApp extends StatelessWidget {
  const PractiseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First App",
      home: HomePage2(),
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
      backgroundColor: const Color.fromARGB(255, 238, 238, 240),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blueAccent,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.redAccent,
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
        },
        child: const Icon(Icons.access_alarm_outlined),
      ),
    );
  }
}
