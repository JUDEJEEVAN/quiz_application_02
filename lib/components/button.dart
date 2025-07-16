import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const Button({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 51,
        width: 303,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Color(0xff01356B), fontSize: 16),
          ),
        ),
      ),
    );
  }
}
