import 'package:e/sceen/guess/Auth.dart';
import 'package:e/sceen/guess/Password.dart';
import 'package:e/sceen/guess/Term.dart';
import 'package:flutter/material.dart';

class Guess extends StatefulWidget {
  const Guess({super.key});

  @override
  State<Guess> createState() => _GuessState();
}

class _GuessState extends State<Guess> {
  List<Widget> _widgets=[

  ];
  int _indexSelected = 1;
  @override
  void iniState(){
    super.initState();
    _widgets.addAll([
      Auth(),
      Term(),
      Password(),
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexSelected),
    );
  }
}