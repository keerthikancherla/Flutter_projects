import 'package:flutter/material.dart';

import '../view/homepage.dart';
import '../view/registrationpage.dart';

const popupmenulist = [
  'Registration', 
  'Profile',
  'Search',
  'Quit'
];

class HomePageController {

  HomePageState state;
  HomePageController(this.state);
  void upButton(){
    ++state.count;
    state.stateChanged((){
      ++state.count;
    });
    //print('count = ' +state.count.toString());
  }
  

  void downButton()
  {
   state.stateChanged((){
      --state.count;
    });
   //print('count = ' +state.count.toString());
  }


  List<PopupMenuEntry<String>>showPopupMenu(BuildContext context){
        return popupmenulist.map((item){
          return PopupMenuItem(
            value: item,
            child: Text(item),
            );
        }).toList();
  
  }

  void popupMenuSelected(String menu)
  {
    var destination;
    if(menu == popupmenulist[0]){
      destination = RegistrationPage();
    }
    if(destination != null){
      Navigator.push(state.context, MaterialPageRoute(
        builder: (BuildContext context) => destination,
      ));
    }
  }
}