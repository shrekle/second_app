import 'package:flutter/material.dart';
import 'package:second_app/home_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    //State<> is a generic type so it needs to be defined
    return _QuizState();
    //createState() means it creates an instance of a class that is connected to Quiz type, which here is the _QuizState
  }
}

class _QuizState extends State<Quiz> {
  //State<> is a generic class, you tell by the brackets<>, so you implicitly "cast it to the statefull widgets class"
  @override
  Widget build(context) {
    return MaterialApp(
      //if crap goes sideways for no reason, remove const here
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 67, 18, 151),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
