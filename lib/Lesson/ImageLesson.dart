import 'package:flutter/material.dart';

class ImageLesson extends StatelessWidget {
  const ImageLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children:[
            Image.network(
              'https://www.shutterstock.com/image-photo/surreal-image-african-elephant-wearing-260nw-1365289022.jpg',
              fit: BoxFit.fill,
              height: 300,
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/image.png', fit: BoxFit.fill, height: 300),
          ]
        ),
      ),
    );
  }
}