import 'package:flutter/material.dart';

void main() {
  //fluuter app the custom class we created construtor creates an or an object
  //is passed.which in turn latter the app cal the build methods which returns
  //widget to draw on screen//wriitten by fluuter in package in material.dart

  runApp(FlutterApp()); //run app takes a widget and recreate on the screen
  //tells flutter tu draw on the screen render
}

//pascalnaming scheme no sapce inside or _ for classes
//widgets areobjects that are displayed on scren
//the screen itself is made up of many widgets in a tree model
//to build our own widget we extend a predefined widget class from a package
//which does the rendering work while our class defines how it should be rendered

class FlutterApp extends StatelessWidget {
//need to impement abstract method from parent class with context objects which stores metadata//
//build overreidefluutter will cal build app to render

  Widget build(BuildContext context) {
    //metadata about widget its posiotion and xy  ,widget ree positin
    //flutter provides the values of context when it callss it
    //build basic app where for app,brings home core widget to cscreen
    //MAterial app is a class and its it is constructor
    return MaterialApp(
      home: Text('Hello'),
    );
    //at last of every widget we create we have to retrun a base widget which will always will
    //be the package provided widget
  }
}
