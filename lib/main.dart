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
<<<<<<< HEAD
      backgroundColor: const Color.fromARGB(255, 238, 238, 240),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
=======
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
>>>>>>> 08f802ec1e5e08441b1374eaf3b27a6a2aa39020
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
