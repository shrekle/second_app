import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override //when this has error, means i forgot the ; in the constructor
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/images/quiz-logo.png'),
            const Padding(padding: EdgeInsets.only(top: 40)),
            const Text(
              "learn flutter the fun way!!!",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
