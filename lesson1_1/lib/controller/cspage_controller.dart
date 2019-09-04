import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/cspage.dart';

class cspage_controller {

  CSPage csPage;

  cspage_controller(this.csPage);

  void iconButtonPressed(){
    showDialog(
      context: csPage.context,
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('IconButton'),
          content: Text('Do you want to call?'),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text("Yes"),
              onPressed: (){
              Navigator.pop(csPage.context);
            }, ),
              CupertinoDialogAction(
                child: Text("No") ,
                onPressed: (){
              Navigator.pop(csPage.context);
            },),
          ],
        );
      }
    );
  }
  void flatButtonPressed(){
    showDialog(
      context: csPage.context,
      builder: (context)  {
        return AlertDialog(
          title: Text('Appointment'),
          content: Text('You have given appointment'),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed:(){
              Navigator.pop(csPage.context);
              } ,
            )
          ],
        );
      }
    );
  }

}