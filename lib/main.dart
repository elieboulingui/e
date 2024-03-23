import 'package:e/sceen/guess/Auth.dart';
import 'package:e/sceen/guess/Guess.dart';
import 'package:e/sceen/guess/Password.dart';
import 'package:e/sceen/guess/Term.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'application de josue',

      home: Guess(),
    );
  }
}
