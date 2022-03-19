import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //if quesiton had underscore it will beunaccescibe in main
  //Stateless widget gets rerednered when data comes from outside.
//The properties of the statless widget has to be a final.
//it means it cant be changed after its intialization from constructor.
//Once the object is live we cant change it
  final String questionText;

  Question(this.questionText); //positional argument

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(
          50), //special constructr that creates new edgeisnert with values
      child: Text(questionText,
          style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
    );
    //return Text(questionText(postional argument),text style is a object not widget in the materials.dart);
    //style named arguments,textlaign is an enum.enum is set of predefined list
    //text widget get only much space that it requires
    //container takes named child arguments
    //container is special widget
  }
}
