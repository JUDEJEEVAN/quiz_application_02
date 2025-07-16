import 'package:flutter/material.dart';
import 'package:quiz_application_02/views/question_screen.dart';
import 'package:quiz_application_02/views/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuestionScreen(),
    ),
  );
}
