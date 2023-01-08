import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';
import 'package:udemy_flutter/BMI/bmiHome.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewMain(),
  ));
}

class NewMain extends StatelessWidget {
  const NewMain({super.key});

  @override
  Widget build(BuildContext context) {
    List Images = [
      'assets/images/image.png',
      'assets/images/image2.jpeg',
      'assets/images/image3.jpeg',
    ];
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 400,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                initialPage: 1),
            items: Images.map((i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  i,
                  fit: BoxFit.fill,
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            itemCount: Images.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  Images[itemIndex],
                  fit: BoxFit.fill,
                ),
              );
            },
            options: CarouselOptions(
                height: 400,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                initialPage: 2),
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: 400,
                autoPlay: true,
                enableInfiniteScroll: false,
                pauseAutoPlayOnTouch: false,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 400),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                reverse: true,
                scrollDirection: Axis.vertical,
                onPageChanged: (index, reason) {
                  print(index);
                },
                initialPage: 3),
            items: Images.map((i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  i,
                  fit: BoxFit.fill,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
