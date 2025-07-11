import 'package:flutter/material.dart';
import 'package:quiz_application_02/components/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisSize: MainAxisSize.min,
            children: [
              // to add gaps above the other widgets
              SizedBox(height: 50),

              // simple text
              Text(
                ('quiz time').toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),

              // image
              Image.asset('assets/home_image.png', width: 304),

              // button
              // Button(),
              // InkWell(
              //   child: Button(),
              //   onTap: () {
              //     print('clicked the button');
              //   },
              // ),
              GestureDetector(
                child: Button(),
                onTap: () {
                  print('gesture detector .....');
                },
              ),

              // to add gaps below the other widgets
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
