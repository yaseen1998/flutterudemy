import 'package:flutter/material.dart';


String info(String a) {
  return (a);
}
class StreamFutureBuilder extends StatelessWidget {
  const StreamFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NewMain'),
        ),
        body: Column(
          children: [
            FutureBuilder(
              future: Future.delayed(const Duration(seconds: 2), () => info('f1')),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('${snapshot.data}');
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                // if(snapshot.connectionState == ConnectionState.done){
                //   return Text('done');
                // }
                return CircularProgressIndicator();
              },
            ),
            StreamBuilder(
              stream: Stream.periodic(const Duration(seconds: 1), (x) => x),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('${snapshot.data}');
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      );
  }
}