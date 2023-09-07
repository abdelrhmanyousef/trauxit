import 'package:flutter/material.dart';
import 'package:test/HomePage.dart';

void main() {
  runApp(const Bookapp());
}

class Bookapp extends StatelessWidget {
  const Bookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
