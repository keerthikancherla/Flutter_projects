import 'package:flutter/material.dart';

import '../controller/homePage_controller.dart';

class homePage extends StatelessWidget {
  
  homePage_controller controller;
  BuildContext context;
  homePage(){
    controller = homePage_controller(this);
  }
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson1 Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //DrawerHeader(
              //child: Text('Choose a menu:'),
            //),
            UserAccountsDrawerHeader(
              accountName: Text('Keerthi'),
              accountEmail: Text('kkancherla@uco.edu'),
              currentAccountPicture: Image.asset('assets/images/keerthi.JPG'),
              ),
            RaisedButton(
              child: Text('CS Department'),
              onPressed: controller.csButton,
              ),
            RaisedButton(
              child: Text('UCO'),
              onPressed: (){},
              ),
          ],
          ),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
            Expanded(child: Text('one1', style: TextStyle(fontSize: 50))),
            Expanded(child: Text('one2', style: TextStyle(fontSize: 50))),
            ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Image.asset('assets/images/uco.jpg')),
                Expanded(child: Image.network('https://picsum.photos/id/103/536/354')),
              ],
            ),
            Row(
               children: <Widget>[
          FlatButton(
            child: Text('Flat Button'),
            onPressed: controller.flatButtonPressed,
          ),
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: controller.iconButtonPressed,
          ),
          RaisedButton(
            child: Text('Raised Button'),
            onPressed: controller.raisedButtonPressed,
          ),
        ],
            ),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 100)),
        ]
      ),
    );
  }

}