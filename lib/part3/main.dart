import 'package:flutter/material.dart';
import 'package:flutter_application_1/part3/home.dart';

void main(List<String> args) {
  runApp(const FunCal());
}

class FunCal extends StatelessWidget {
  const FunCal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Fun Calculatro",
      home: HomePage(),
    );
  }
}
