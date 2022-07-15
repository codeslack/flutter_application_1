import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String calcText = "";
  String dob = "";
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff22252D),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height / 15,
                    child: Text(
                      calcText,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Container(
              height: size.height / 1.8,
              decoration: const BoxDecoration(
                color: Color(0xff2A2D36),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("AC", Colors.green),
                    blocks("CC", Colors.green),
                    blocks("%", Colors.green),
                    blocks("/", Colors.red)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("1"),
                    blocks("2"),
                    blocks("3"),
                    blocks("X", Colors.red)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("4"),
                    blocks("5"),
                    blocks("6"),
                    blocks("-", Colors.red)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("7"),
                    blocks("8"),
                    blocks("9"),
                    blocks("+", Colors.red)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blocks("/"),
                    blocks("0"),
                    blocks("."),
                    blocks("=", count == 0 ? Colors.red : Colors.blue)
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget blocks(String text, [Color? color]) {
    return GestureDetector(
      onTap: () {
        if (text == "AC") {
          setState(() {
            calcText = "";
            count = 0;
          });
        } else if (text == "=") {
          if (count == 0) {
            setState(() {
              dob = calcText;
              count += 1;
              calcText = "";
            });
          } else {
            setState(() {
              calcText = dob;
              count -= 1;
            });
          }
        } else {
          setState(() {
            calcText = calcText + text;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              color: Color(0xff22252D),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: color ?? Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
