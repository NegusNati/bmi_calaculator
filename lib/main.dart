import 'package:flutter/material.dart';
import 'input_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(
       
        primaryColor: Color(0xFF0E1436),
        scaffoldBackgroundColor: Color(0xFF0E1436),
      ),
      home: InputPage(),
    );
  }
}
