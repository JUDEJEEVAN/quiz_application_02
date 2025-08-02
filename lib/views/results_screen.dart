import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application_02/components/final_answer.dart';
import 'package:quiz_application_02/data/test_data.dart';
import 'package:quiz_application_02/views/start_screen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.userSelection});

  final List<String> userSelection;

  @override
  Widget build(BuildContext context) {
    int correctAnswerCount = 0;

    for (int i = 0; i < questions.length; i++) {
      if (userSelection[i] == questions[i].correctAnswer) correctAnswerCount++;
    }

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
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Results',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'You got $correctAnswerCount out of ${questions.length} questions.',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const Gap(24),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: questions.length,
                          itemBuilder: (context, index) {
                            return FinalAnswer(
                              index: index,
                              selectedAnswer: userSelection[index],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (ctx) => StartScreen()),
                    );
                  },
                  child: Text(
                    'Reset Quiz',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
