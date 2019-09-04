import 'package:flutter/material.dart';
import '../controller/cspage_controller.dart';

class CSPage extends StatelessWidget{
  
  cspage_controller controller;
  BuildContext context;

  CSPage(data){
    controller = cspage_controller(this);
    this.data = data;
  }
  
  var data;
  String description = 'Prospective students must submit a completed application form (this may be done by applying online, pay a non-refundable application fee, submit official transcripts from ALL accredited institutions of higher learning attended at the undergraduate and graduate levels, and any degree(s) earned must be posted on the appropriate transcript(s). Applicants must submit any support documents such as admission test scores, letters of recommendation, etc., which may be a specific program requirement.';
 
  @override
  Widget build(BuildContext context) { 
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text('CS Home'),
      ),
      body: ListView(
        children: <Widget>[
          Text('Enrollment: undergrads = ${data['ug']}, grads = ${data['gr']}',
            style: TextStyle(fontSize: 20),
          ),
          Image.asset('assets/images/uco.jpg'),
          Row(
            children: <Widget>[
              Container(
                //decoration: new BoxDecoration(color: Colors.pinkAccent),
                padding: EdgeInsets.only(right: 20),
                child: Column(
                  children: <Widget>[
                    Text('Department of Computer Science'),
                    Text('Edmond Oklahoma'),
                  ],
                ),
              ),
              Container(
              //decoration: new BoxDecoration(color: Colors.pinkAccent),
              padding: EdgeInsets.only(left: 20, right: 20),
                child: Icon(Icons.star)
                ),
              Container(
                 //decoration: new BoxDecoration(color: Colors.pinkAccent),
                  child: Text('3100')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            IconButton(icon: Icon(Icons.directions), onPressed: (){},),
            IconButton(icon: Icon(Icons.call), 
            onPressed: controller.iconButtonPressed,),
            IconButton(icon: Icon(Icons.web), onPressed: (){},),

          ],
          ),
          Card(
            elevation: 10,
            color: Colors.teal,
            child: Text(description),
            ),
            FlatButton(
            child: Text('Appointment'),
            onPressed: controller.appbuttonpressed,)
        ],
      ),);
  }
  
}