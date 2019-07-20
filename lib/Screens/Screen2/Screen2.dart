import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Screen1/RecommendTypes.dart';
import 'package:travel_app/Screens/Screen1/TourCard.dart';

enum TourDefine {
  Overview,
  Details,
}

class Screen2 extends StatefulWidget {
  final String imgUrl;

  Screen2({Key key, this.imgUrl}) : super(key: key);
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TourDefine tourDefine = TourDefine.Overview;
  Color kActivecolor = Colors.black87;
  Color kInactivecolor = Colors.black26;
  String overview =
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  String details = 'ASDFGHJKLZXCVBNM';
  String mainfeed =
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(widget.imgUrl), fit: BoxFit.cover),),
        child: Stack(
          //fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 550),
                child: Icon(
                  Icons.account_balance,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: 275, left: 50),
//                child: Text('Mt Fuji',style: TextStyle(
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold,
//                  fontSize: 40
//                ),),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: 120, left: 30),
                child: Text(
                  'Mt Fuji',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 80,
                margin: EdgeInsets.only(bottom: 275, right: 50),
                child: RatingWidget(
                  rating: 3.4.toString(),
                  padding: EdgeInsets.all(9),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(bottom: 120, right: 50),
                child: Text(
                  'Rs 999',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Color.fromRGBO(248, 248, 248, 0.34),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: RecommendTypes(
                              color: tourDefine == TourDefine.Overview
                                  ? kActivecolor
                                  : kInactivecolor,
                              RecommnedType: 'Overview',
                            ),
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              setState(
                                () {
                                  tourDefine = TourDefine.Overview;
                                  mainfeed = overview;
                                },
                              );
                            },
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          InkWell(
                            child: RecommendTypes(
                              color: tourDefine == TourDefine.Details
                                  ? kActivecolor
                                  : kInactivecolor,
                              RecommnedType: 'Details',
                            ),
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              setState(
                                () {
                                  tourDefine = TourDefine.Details;
                                  mainfeed = details;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 19, left: 15, right: 15),
                      child: Text(
                        mainfeed,
                        style: TextStyle(
                          fontFamily: 'BreeSerif',
                          fontSize: 18,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
