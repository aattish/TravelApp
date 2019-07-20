import 'package:flutter/material.dart';



class SideNavigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Hero(tag: 'User', child: Icon(Icons.account_circle,size: 100,),transitionOnUserGestures: true,),
        ],
      ),
    );
  }

}