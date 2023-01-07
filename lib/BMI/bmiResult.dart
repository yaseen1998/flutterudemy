import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age});
  final double result;
  final bool isMale;
  final int age;

  String get resultPharse {
    if (result >= 25 && result < 30) {
      return "Overweight";
    } else if (result >= 18.5 && result < 25) {
      return "Normal";
    } else if (result >= 30) {
      return "Obese";
    } else {
      return "Underweight";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Gender : ${isMale ? "Male" : "Female"}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Age : $age',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Result : ${result.toStringAsFixed(2)}',
                 style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "resultPharse : $resultPharse",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center
              ),
            ],
          ),
        ),
      ),
    );
  }
}
