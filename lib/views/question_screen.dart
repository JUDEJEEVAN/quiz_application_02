import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application_02/components/button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

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
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Question text here...',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),

              // SizedBox(height: 80),
              Gap(60),
              Button(label: 'Answer 1'),
              Gap(16),
              Button(label: 'Answer 2'),
              Gap(16),
              Button(label: 'Answer 3'),
              Gap(16),
              Button(label: 'Answer 4'),
            ],
          ),
        ),
      ),
    );
  }
}
