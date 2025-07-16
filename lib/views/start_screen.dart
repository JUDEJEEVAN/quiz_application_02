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
              // GestureDetector(
              //   child: Button(label: 'Start Quiz New'),
              //   onTap: () {
              //     print('gesture detector .....');
              //   },
              // ),

              // custom button
              Button(
                label: 'Start New Quiz',
                onTap: () {
                  print('running onAction function...');
                },
              ),

              // button plan
              // 1. button kku label pass panni antha label display aahira maathiri seiya venum
              // 2. button kku oru function pass panni atha buttona user tap pannekkulla run pannonum
              //    2.1 button kku oru function pass panna koodiya maathiri irukkonum
              //    2.2 antha function button tap pannekkulla run aahonum

              // Button(
              //  onTap: () {
              //     print('gesture detector .....');
              //  }
              // ),

              // to add gaps below the other widgets
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

/**


 int addTwoNumbers({required int numberA, required int numberB}) {
    return numberA + numberB;
 }

 addTwoNumbers(numberB: 10, numberA: 12);


 // factory la car manufacture panran 
 wheels, stering, body, brake, engine

  person 1 - wheels
  person 2 - stering
  persong 3 - body
  person 4 - brake
  person 5 - engine

  car {
    wheels = '2 set rubber';
    stering = 'carbon fiber 1 wheel';
    body = aluminium;
    brake = 2 set hydrolic brake;
    engine = 4 stroke 4 cylinder 700cc;

    honk() {
        // make sound
    }

    brake() {
      // apply brake
    }

    accelerate() {
      // increase speed
    }

  }


  class Car {
    String wheels;
    String stering;
    String body;
    String brake;
    String engine;
    int numberOfWindows;
    bool isFourWheelDrivable;

    // constructor
    Car({
        required this.wheels, 
        required this.stering, 
        required this.body, 
        requied this.brake, 
        required this.engine, 
        required this.numberOfWindws, 
        required this.isFourWheelDrivable
      });

    void honk() {
      print('Car is honking');
    }

    String brake() {
      print('Stopping the car');
      return 'Stopping the car';
    }

    double accelerate() {
      print('increase speed');
      return ++speed;
    }
  }

  print();

  Car(wheels: '2 set rubber', stering: 'carbon fiber 1 wheel', body: 'aluminium', ....)




  functionName() {}
  () {}

  String getTitle() => ;
  () => 

  () => 
  () {}

 */
