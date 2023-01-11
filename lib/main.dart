import 'package:flutter/material.dart';
import 'package:udemy_flutter/my_color.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
      bottomNavigationBar:  GNav(
        gap: 4,
        activeColor: Colors.purple,
        tabBorder: Border.all(color: Colors.green),
        tabActiveBorder: Border.all(),
        duration: const Duration(seconds: 1),
        tabBorderRadius: 15,
        tabBackgroundColor: Colors.orange.withOpacity(0.4),
        iconSize: 12,
        tabShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8) ,blurRadius: 8
          )
        ],
        tabs: const[
          GButton(icon: Icons.home,text: "home",),
          GButton(icon: Icons.person,text: "person",),
          GButton(icon: Icons.search,text: "search",),
        ],
      ),
      body: MyColor(
        color: Colors.red,
        child: Center(),
      ),
    );
  }
}
