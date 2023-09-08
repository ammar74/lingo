import 'package:flutter/material.dart';
import 'package:lingo/screens/home_page.dart';

void main() {
  runApp(const LingoApp());
}

class LingoApp extends StatelessWidget {
  const LingoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
