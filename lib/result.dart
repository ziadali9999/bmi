import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';

class Result extends StatelessWidget {
  Result({required this.result, required this.isMale, required this.age});
  double result;
  bool isMale;
  int age;
  String get healthiness {
    String x = '';
    result >= 30
        ? x = 'Obese'
        : result >= 25 && result <= 29.9
            ? x = 'Overweight'
            : result >= 18.5 && result <= 24.9
                ? x = 'Normal'
                : x = 'Thin';
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: mytextstyle('Results', 25),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mytextstyle(
                  'Your gender is ${isMale == true ? 'Male' : 'Female'}', 27),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mytextstyle('Your age = $age', 27),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mytextstyle(
                  'Your BMI Result = ${result.toStringAsFixed(1)}', 27),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mytextstyle('Your healthiness is $healthiness', 27),
            )
          ],
        )),
      ),
    ));
  }
}
