import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application_02/components/button.dart';
// import 'package:quiz_application_02/components/button.dart';
import 'package:quiz_application_02/data/test_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestion = 0;
  List<String> userSelection = [];

  // render answer function
  List<Widget> renderAnswers(int index) {
    List<Widget> answerButtons = [];

    List<String> answers = questions[index].answers;

    answers.forEach((String answer) {
      // button widget
      Widget button = Button(
        label: answer,
        onTap: () {
          userSelection.add(answer);

          if (questions.length <= currentQuestion + 1) return;

          setState(() {
            currentQuestion++;
          });
        },
      );
      Widget gap = Gap(12);

      answerButtons.add(button);
      answerButtons.add(gap);
    });

    return answerButtons;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff01356B),
              Color(0xff014285),
              Color(0xff0260C2),
              Color(0xff0268D1),
            ],
          ),
        ),
        // color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // Widget
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  questions[currentQuestion].question,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Widget
              Gap(60),

              ...renderAnswers(currentQuestion),
            ],
          ),
        ),
      ),
    );
  }
}
