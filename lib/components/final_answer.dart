import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application_02/data/test_data.dart';

class FinalAnswer extends StatelessWidget {
  const FinalAnswer({
    super.key,
    required this.index,
    required this.selectedAnswer,
  });

  final String selectedAnswer;
  final int index;

  @override
  Widget build(BuildContext context) {
    final bool isCorrect = selectedAnswer == questions[index].correctAnswer;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: isCorrect ? Colors.white : Colors.red.shade300,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              (index + 1).toString(),
              style: TextStyle(
                color: isCorrect ? Color(0xff0268D1) : Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const Gap(12),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questions[index].question,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              if (!isCorrect)
                Text(
                  questions[index].correctAnswer,
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              Text(
                selectedAnswer,
                style: TextStyle(
                  color: isCorrect ? Colors.white : Colors.red.shade300,
                  fontSize: 16,
                ),
              ),
              const Gap(24),
            ],
          ),
        ),
      ],
    );
  }
}
