import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Screen1/Screen1.dart';
import 'package:travel_app/Screens/Screen1/SideNavigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.white,
        )
      ),
      home: TravelMain(),
    );
  }
}

class TravelMain extends StatefulWidget {
  @override
  _TravelMainState createState() => _TravelMainState();
}

class _TravelMainState extends State<TravelMain> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40,),),
          onPressed: (){
            print('Data Called');
          },
          child: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60,),),
            onPressed: (){
              MaterialPageRoute(
                builder: (context) => SideNavigator(),
              );
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 17,
              child: Hero(
                tag: 'User',
                transitionOnUserGestures: true,
                child: Icon(
                  Icons.account_circle,
                  size: 26,
                  color: Colors.black87,
                ),
              ),
            ),
          )
        ],

      ),
      backgroundColor: Colors.white,
      body: Screen1(),

    );
  }
}



//FutureBuilder(
//future: getData(),
//builder: (BuildContext context,AsyncSnapshot snapshot) {
//if(snapshot.hasData){
//return Scaffold(
//appBar: AppBar(
//backgroundColor: Colors.white,
//elevation: 0,
//leading: Icon(
//Icons.menu,
//color: Colors.black87,
//),
//actions: <Widget>[
//Container(
//margin: EdgeInsets.only(right: 10),
//child: CircleAvatar(
//radius: 13,
//child: Icon(
//Icons.person,
//size: 18,
//),
//),
//)
//],
//),
//backgroundColor: Colors.white,
//body: Screen1(data: snapshot.data,),
//);
//}else{
//return Material(
//child: Center(child: CircularProgressIndicator(),),
//);
//}
//},
//);