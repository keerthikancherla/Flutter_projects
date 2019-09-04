import 'package:flutter/material.dart';
import 'package:lesson1_1/controller/cspage_controller.dart';
import 'package:lesson1_1/view/UCOpage.dart';
import 'package:lesson1_1/view/cspage.dart';
import '../view/UCOpage.dart';

class UCOPage_controller{

  UCOpage ucopage;
  CSPage csPage;

  UCOPage_controller(this.ucopage);
  

  void iconButtonPressed(){
    showDialog(
      context: ucopage.context,
      builder: (context)  {
        return AlertDialog(
          title: Text('IconButton'),
          content: Text('Added to your favourites'),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed:(){
              Navigator.pop(ucopage.context);
              } ,
            )
          ],
        );
      }
    );

  }
  void raisedButtonPressed(){
    showDialog(
      context: ucopage.context,
      builder: (context)  {
        return AlertDialog(
          title: Text('Registration'),
          content: Text('You have registered'),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed:(){
              Navigator.pop(ucopage.context);
              } ,
            )
          ],
        );
      }
    );
 
  }
  void uButton() async {
    var data = <String, int>{'ug':34, 'gr': 31};
    await Navigator.push(ucopage.context, MaterialPageRoute(
      builder: (BuildContext context){ return UCOpage(data);},
          ));
          Navigator.pop(ucopage.context);
        }
}