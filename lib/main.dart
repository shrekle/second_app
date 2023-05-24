import 'package:flutter/material.dart';
import 'package:second_app/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      //if crap goes sideways for no reason, remove const here
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 67, 18, 151),
              ],
            ),
          ),
          child: const HomeScreen(),
        ),
      ),
    ),
  );
}
