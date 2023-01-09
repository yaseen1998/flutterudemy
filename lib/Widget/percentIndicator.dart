import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: NewMain(),
  ));
}

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _NewMainState();
}

class _NewMainState extends State<NewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 10.0,
            percent: 0.7,
            center: const Text('70%'),
            progressColor: Colors.green,
            backgroundColor: Colors.red,
            header: const Text('Header'),
          ),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width - 50,
            lineHeight: 14.0,
            percent: 0.2,
            center: const Text('20.0%'),
            progressColor: Colors.green,
            leading: const Icon(Icons.mood),
            trailing: const Icon(Icons.mood_bad),
          ),
          const SizedBox(height: 20),
          CircularPercentIndicator(
            animation: true,
            animationDuration: 1200,
            radius: 130.0,
            lineWidth: 10.0,
            percent: 0.5,
            center: const Text('50%'),
            progressColor: Colors.green,
            circularStrokeCap: CircularStrokeCap.round,
          ),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width - 50,
            lineHeight: 14.0,
            percent: 0.2,
            center: const Text('20.0%'),
            progressColor: Colors.green,
            linearStrokeCap: LinearStrokeCap.roundAll,
          ),
          const SizedBox(height: 20),
          CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 10.0,
            percent: 0.5,
            center: const Text('50%'),
            progressColor: Colors.green,
            circularStrokeCap: CircularStrokeCap.butt,
          ),
        ],
      )
      );
  }
}
