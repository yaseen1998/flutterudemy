import 'package:flutter/material.dart';

class MyColor extends InheritedWidget{
final Color color;
final Widget child;
MyColor({required this.color,required this.child}):super(child:child);

  @override
  bool updateShouldNotify(MyColor oldWidget) {
    // TODO: implement updateShouldNotify
    return color != oldWidget.color;
  }
  static MyColor of( context){
    return context.inheritFromWidgetOfExactType(MyColor)!;
  }
}