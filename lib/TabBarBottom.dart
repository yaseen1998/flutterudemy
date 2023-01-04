import 'package:flutter/material.dart';

class TabBarBottom extends StatefulWidget {
   TabBarBottom({super.key});

  @override
  State<TabBarBottom> createState() => _TabBarBottomState();
}

class _TabBarBottomState extends State<TabBarBottom> {
  int _selectedIndex = 0;

final List <Map<String,dynamic>> _page = [
  {
    'page':  const Scaffold(
      body: Center(
        child: Text('Car'),
      ),
    ),
    'title': 'Car',
  },
  {
    'page':  const Scaffold(
      body: Center(
        child: Text('Transit'),
      ),
    ),
    'title':'Transit',
  },
  {
    'page':  const Scaffold(
      body: Center(
        child: Text('Bike'),
      ),
    ),
    'title': 'Bike',
  }
    
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_page[_selectedIndex]['title']),
        ),
        body: _page[_selectedIndex]['page'],
        bottomNavigationBar:  BottomNavigationBar(
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedFontSize: 16,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.shifting, // shifting delete background color and title
          onTap: (index) {
            // Respond to item press.
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const[
            BottomNavigationBarItem(
              backgroundColor: Colors.teal,
              icon:  Icon(Icons.directions_car),
              label: 'Car',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.teal,
              icon:  Icon(Icons.directions_transit),
              label: 'Transit',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.teal,
              icon:  Icon(Icons.directions_bike),
              label: 'Bike',
            ),
          ],
        ),
      ),
    );
  }
}