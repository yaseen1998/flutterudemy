import 'package:flutter/material.dart';
import 'dart:async';
class Data {
  final String title;
  final String description;
  final String imageUrl;
  final IconData icon;

  Data(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.icon});
}

class PVL extends StatefulWidget {
  const PVL({super.key});

  @override
  State<PVL> createState() => _PVLState();
}

class _PVLState extends State<PVL> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  final List<Data> myData = [
    Data(
      title: 'Title 1',
      description: 'Description 1',
      imageUrl: 'assets/images/image3.jpeg',
      icon: Icons.ac_unit,
    ),
    Data(
      title: 'Title 2',
      description: 'Description 2',
      imageUrl: 'assets/images/image2.jpeg',
      icon: Icons.access_alarm,
    ),
    Data(
      title: 'Title 3',
      description: 'Description 3',
      imageUrl: 'assets/images/image.png',
      icon: Icons.access_time,
    ),
  ];
  int PageIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
   super.initState();
   Timer.periodic(const Duration(seconds: 2), (timer) {
      if(PageIndex<2){
          PageIndex++;
        _pageController.animateToPage(PageIndex, duration: const Duration(seconds: 1), curve: Curves.easeIn);
      }else{
        timer.cancel();
      }
    });
     
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                PageIndex = index;
              
              });
              if(PageIndex==2)Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.pushNamed(context, '/b'));

            },
              children: myData
                  .map((e) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(e.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(e.title,
                                style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text(e.description,
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            const SizedBox(height: 40),
                            Icon(e.icon, size: 100),
                          ],
                        ),
                      ))
                  .toList()),
           Center(
            child: Indicator(
              currentIndex: PageIndex,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(400, 65),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
              child: const Text('Get Started',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int currentIndex;
  const Indicator({ required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return 
    Align(
      alignment: const Alignment(0, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            transformAlignment: Alignment.center,
            height: 10,
            width: currentIndex == 0 ? 30 : 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: currentIndex == 0? Colors.deepOrange : Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 10,
            width: currentIndex == 0 ? 30 : 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: currentIndex == 1? Colors.deepOrange : Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 10,
            width: currentIndex == 0 ? 30 : 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: currentIndex == 2 ? Colors.deepOrange : Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
