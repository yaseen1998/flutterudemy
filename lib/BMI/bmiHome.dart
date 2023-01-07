// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:udemy_flutter/BMI/bmiResult.dart';

class BmiHome extends StatefulWidget {
  const BmiHome({super.key});

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  double height = 120;
  int age = 20;
  int weight = 40;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    GenderExpanded(context, true),
                    const SizedBox(
                      width: 10,
                    ),
                    GenderExpanded(context, false),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Column(
                    children: [
                      Text('Height',style: Theme.of(context).textTheme.bodyText1),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                         Text("${height.round()}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                         SizedBox(width: 10),
                         Text('cm',style: Theme.of(context).textTheme.bodyText1),
                     ],),
                     Slider(onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      }, value: height,min: 90,max:250 )
                    ],
                  ),
                ),
              ),
            ),
            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SizeExpanded(context, 'Age', age),
                    const SizedBox(
                      width: 10,
                    ),
                    SizeExpanded(context, 'Weight', weight),
                  ],
                ),
              ),
            ),
            
            Container(
              color: Colors.teal,
              width: double.infinity,
              height: MediaQuery.of(context).size.height /16,
              child: ElevatedButton(
                onPressed: () {
                  double result = weight / (height/100 * height/100);
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  BmiResult(
                    result: result,
                    isMale: isMale,
                    age: age,
                  )));
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded GenderExpanded(BuildContext context, bool Gender) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isMale = Gender ? true : false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (isMale && Gender) || (!isMale && !Gender)
                ? Colors.blue
                : Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Gender ? Icons.male : Icons.female),
              const SizedBox(
                height: 15,
              ),
              Text(Gender ? 'Male' : 'Female',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ),
    );
  }

  Expanded SizeExpanded(BuildContext context, String Type, int value) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$Type', style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(
              height: 15,
            ),
            Text('$value', style: Theme.of(context).textTheme.bodyText1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: "$Type--",
                  onPressed: () {
                    setState(() {
                      Type == 'Age' ? age -= 1 : weight -= 1;
                    });
                  },
                  mini: true,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: "$Type++",
                  onPressed: () {
                    setState(() {
                      Type == 'Age' ? age += 1 : weight += 1;
                    });
                  },
                  mini: true,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
