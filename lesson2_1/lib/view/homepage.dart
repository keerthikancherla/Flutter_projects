import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controller/homepage_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}
class HomePageState extends State<HomePage> {
  
  HomePageController controller;
  BuildContext context;
  int count =0;

  HomePageState(){
    controller = HomePageController(this);
  }

  void stateChanged(Function f){
    setState(f);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
    appBar : AppBar(
      title: Text('Lesson2 Home'),
      actions: <Widget>[
        Icon(Icons.ac_unit),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),
       
        PopupMenuButton<String>(
          onSelected: controller.popupMenuSelected,
          itemBuilder: controller.showPopupMenu,
        ),
      ],
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Count = '+ count.toString(),
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10),
                child: RaisedButton(
                  child: Text('Up'),
                  onPressed: controller.upButton,
                ),
              ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: RaisedButton(
                    child: Text('Down'),
                    onPressed: controller.downButton,
                  ),
                ),
            ],
          )
        ],
    ),
    );
  }

}