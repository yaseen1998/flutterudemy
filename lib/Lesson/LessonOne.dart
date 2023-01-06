
import 'package:flutter/material.dart';
import 'package:udemy_flutter/Lesson/ButtonLesson.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Add'),
            icon: const Icon(Icons.add),
            backgroundColor: Colors.red,
            foregroundColor: Colors.yellow,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.blue, width: 5.0)),
            splashColor: Colors.green,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: const Icon(Icons.add),
          //   backgroundColor: Colors.red,
          //   foregroundColor: Colors.yellow,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20.0),
          //     side: const BorderSide(color: Colors.blue, width: 5.0)
          //   ),
          //   splashColor: Colors.green,

          // ),
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: const Icon(Icons.menu),
            title: const Text('New Main'),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.yellow,
              ),
              Icon(Icons.more_vert),
            ],
          ),
          body:Container(
        color: const Color(0xFFE5E5E5),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
     Text('data', style: TextStyle(
      fontSize: 20.0,
      color: Colors.black12,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.yellow,
      shadows:const[
        Shadow(
          color: Colors.red,
          offset: Offset(5.0, 5.0),
          blurRadius: 10.0,
        ),
        Shadow(
          color: Colors.blue,
          offset: Offset(5.0, 5.0),
          blurRadius: 10.0,
        ),
      ],
      decoration: TextDecoration.combine([
        TextDecoration.underline,
        TextDecoration.overline,
        TextDecoration.lineThrough,
      ]),
      decorationColor: Colors.red,
            ),),
      const Padding(padding:  EdgeInsets.all(20.0),
      child:  Text('data'),
      ),
   const ButtonLesson()
  ],
        ),),);
  }
}
