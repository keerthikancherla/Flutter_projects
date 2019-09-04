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
    final barcolor = const Color(0xFF2B2B52);
    final bgcolor = const Color(0xFF75DA8B);
    this.context = context;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: barcolor,
        title: Text('Lesson1 Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
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
              onPressed: controller.ucoButton,
              ),
          ],
          ),
      ),
      body: ListView(
        //padding: EdgeInsets.only(left: 20,right: 20),
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
                 mainAxisAlignment: MainAxisAlignment.center,
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
          Text('uco', style: TextStyle(fontSize: 100)),
          Text('one', style: TextStyle(fontSize: 90)),
          Text('one', style: TextStyle(fontSize: 80)),
          Text('one', style: TextStyle(fontSize: 70)),
          Text('one', style: TextStyle(fontSize: 60)),
          Text('one', style: TextStyle(fontSize: 50)),
          Text('one', style: TextStyle(fontSize: 40)),
          Text('one', style: TextStyle(fontSize: 30)),
        ]
      ),
    );
  }

}