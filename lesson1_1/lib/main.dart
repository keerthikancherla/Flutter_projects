import 'package:flutter/material.dart';
import './view/homePage.dart';
//import './view/UCOpage.dart';
import './view/cspage.dart';

void main() {
  runApp(Lesson1App());
}

class Lesson1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Lesson1',
      home: homePage(),
     
    );
    
  }

}