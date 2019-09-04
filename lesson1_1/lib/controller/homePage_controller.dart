
import 'package:flutter/material.dart';
import 'package:lesson1_1/view/cspage.dart';
import 'package:lesson1_1/view/UCOpage.dart';

import '../view/homePage.dart';
import '../view/cspage.dart';
import '../view/UCOpage.dart';

class homePage_controller{

  homePage HomePage;
  homePage_controller(this.HomePage);

  void flatButtonPressed() {
    showDialog(
      context: HomePage.context,
      builder: (context)  {
        return AlertDialog(
          title: Text('FlatButton'),
          content: Text('FlatButton is pressed'),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed:(){
              Navigator.pop(HomePage.context);
              } ,
            )
          ],
        );
      }
    );
  }

  void iconButtonPressed(){
    //print('icon button');
    showDialog(
      context: HomePage.context,
      builder: (context)  {
        return AlertDialog(
          title: Text('IconButton'),
          content: Text('IconButton is pressed'),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed:(){
              Navigator.pop(HomePage.context);
              } ,
            )
          ],
        );
      }
    );

  }

  void raisedButtonPressed(){
    showDialog(
      context: HomePage.context,
      builder: (context)  {
        return AlertDialog(
          title: Text('RaisedButton'),
          content: Text('RaisedButton is pressed'),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed:(){
              Navigator.pop(HomePage.context);
              } ,
            )
          ],
        );
      }
    );
  }
  

  void csButton() async {
    var data = <String, int>{'ug': 45, 'gr': 31};
    await Navigator.push(HomePage.context, MaterialPageRoute(
    builder: (BuildContext context){ return CSPage(data);},
    ));
    Navigator.pop(HomePage.context);
  }

   void ucoButton() async {
    var data = <String, int>{'ug':34, 'gr': 31};
    await Navigator.push(HomePage.context, MaterialPageRoute(
      builder: (BuildContext context){ return UCOpage(data);},
          ));
          Navigator.pop(HomePage.context);
        } 
      
    
        
  
}