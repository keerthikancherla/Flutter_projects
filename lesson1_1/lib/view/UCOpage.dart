import 'package:flutter/material.dart';
//import 'package:lesson1_1/controller/homePage_controller.dart';
import 'package:lesson1_1/controller/UCOPage_controller.dart';


class UCOpage extends StatelessWidget{

  UCOPage_controller controller;
  BuildContext context;

  UCOpage(data){
    controller = UCOPage_controller(this);
    this.data = data;
  }
  
  
  var data;
  var data1;
  String description = 'With strong connections throughout the Oklahoma City metro, the University of Central Oklahoma is dedicated to developing in students the confidence to succeed through transformative learning experiences. Central prides itself as a smart investment for success, preparing future leaders in an opportunity-rich environment, with access to more than 200 student organizations and the internship, employment, entertainment and cultural offerings of the rapidly growing Oklahoma City metropolitan area. Founded in 1890 and accredited by the Higher Learning Commission of the North Central Association of Colleges and Schools, Central connects its more than 16,000 students to unmatched value found in 121 undergraduate areas of study and 74 graduate programs from its main campus in Edmond and facilities throughout the metro area. The Jackson College of Graduate Studies (JCGS) is dedicated to providing leadership and support in the development of high quality graduate programs to serve the needs of students, faculty and the university community as they compete in a global society. The JCGS serves a unique function at UCO in its support for and coordination of graduate studies as well as creative and scholarly activities. Once all the required documents are received from the applicant, a copy of those documents is sent to the relevant Graduate Program Advisor for his/her recommendation for admittance to the program.';
  
  @override
  Widget build(BuildContext context) { 
    this.context = context;
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
            ),),
          appBar: AppBar(
            title: Text('UCO Home'),
          ),
          body: ListView(
            children: <Widget>[
              Image.asset('assets/images/ucoimage.jpg'),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Computer Science'),
                        Text('University of Central Oklahoma'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Icon(Icons.assignment)
                    ),
                  Container(child: Text('3100')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                IconButton(icon: Icon(Icons.directions), onPressed: (){},),
                IconButton(icon: Icon(Icons.call), onPressed: (){},),
                IconButton(
                  icon: Icon(Icons.favorite_border), 
                  color: Colors.red, 
                  onPressed: controller.iconButtonPressed,
            ),
            
          ],
          ),
          Card(
            elevation: 10,
            color: Colors.white,
            child: Text(description),
            ),
            RaisedButton(
            child: Text('Register'),
            color: Colors.blue,
            onPressed: controller.raisedButtonPressed,
          ),
        ],
      ),);
  }
  
}