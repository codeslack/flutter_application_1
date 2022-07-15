import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.yellow,
            Colors.orange,
            Colors.red,
          ])),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Let's Pee",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Save yourself from \nawkward situations",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
                height: size.height / 2.7,
                child: const Image(image: AssetImage("assets/pee.png"))),
            SizedBox(
              height: size.height / 10,
            ),
            ElevatedButton(
                onPressed: () {
                  final player = AudioCache();
                  //player.play("pee.mp3");
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Colors.orange,
                    elevation: 5),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Play",
                    style: TextStyle(fontSize: 30),
                  ),
                ))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.abc_outlined),
        ),
      ),
    );
  }
}
