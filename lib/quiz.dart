import 'package:flutter/material.dart';
import 'package:second_app/home_screen.dart';
import 'package:second_app/questions_screen.dart';

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

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

//when you call setState in a widget class, it reruns the build func, then it will compare the result of the previous screen with the one that it was changed to and apply them changes
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

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
          child: activeScreen,
        ),
      ),
    );
  }
}
