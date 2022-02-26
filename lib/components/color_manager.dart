import 'package:flutter/material.dart';

class ColorManager extends InheritedWidget{

  //1.first need to define the changing value
  final Color primaryColor = Colors.yellow;

  const ColorManager({Key? key, required Widget child}) : super(key: key, child: child);

  /*Whenever a value changes / whatever tye child that is going to be changed we can mark it to do a
  kind of state*/
  /* If you need to mark a state change then this is the method that needs to override*/
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static ColorManager of(BuildContext context){
    //Context value that we are getting from each build whenever the widget is going to be rendered is context is actually where we get an
    //idea of the parent's widgets.Gives an idea of what are the parent widget that we have and what are in the top of the all the rendering
    //tree.
    //Context is actually where we get an access to things in the parent. It has all others mini methods.
    return context.dependOnInheritedWidgetOfExactType<ColorManager>()!;
    //Give the closest one

  }

}