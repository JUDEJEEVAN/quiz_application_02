import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 303,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Text(
          ('START QUIZ').toUpperCase(),
          style: TextStyle(color: Color(0xff01356B), fontSize: 16),
        ),
      ),
    );
  }
}
