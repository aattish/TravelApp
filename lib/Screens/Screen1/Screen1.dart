import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Screen1/RecommendTypes.dart';
import 'package:travel_app/Screens/Screen1/TourCard.dart';
import 'package:travel_app/Screens/Screen2/Screen2.dart';

enum RecommendType {
  Recommend,
  Top_Deals,
  Best_Deals,
}

class Screen1 extends StatefulWidget {
  final data;
  const Screen1({Key key, this.data}) : super(key: key);
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  RecommendType recommendType = RecommendType.Recommend;
  Color kActivecolor = Colors.black87;
  Color kInactivecolor = Colors.black26;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height / 3.8,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 23,
                ),
                child: Text(
                  'Hey User \nChoose your \nDestination for next trip',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.w900,
                    fontSize: 28.0,
                    color: Colors.black87,
                  ),
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: <Widget>[
                InkWell(
                  child: RecommendTypes(
                    color: recommendType == RecommendType.Recommend
                        ? kActivecolor
                        : kInactivecolor,
                    RecommnedType: 'Recommend',
                  ),
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    setState(
                      () {
                        print(MediaQuery.of(context).size.width);
                        recommendType = RecommendType.Recommend;
                      },
                    );
                  },
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  child: RecommendTypes(
                    color: recommendType == RecommendType.Top_Deals
                        ? kActivecolor
                        : kInactivecolor,
                    RecommnedType: 'Top Deals',
                  ),
                  onTap: () {
                    setState(
                      () {
                        recommendType = RecommendType.Top_Deals;
                      },
                    );
                  },
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  child: new RecommendTypes(
                    color: recommendType == RecommendType.Best_Deals
                        ? kActivecolor
                        : kInactivecolor,
                    RecommnedType: 'Best Deals',
                  ),
                  onTap: () {
                    setState(
                      () {
                        recommendType = RecommendType.Best_Deals;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              //itemCount: widget.data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen2(
                              imgUrl: 'images/golden_temple.jpg',
                            ),
                      ),
                    );
                    print('You just clicked $index');
                  },
                  child: new TourCards(
                    imgUrl: 'images/golden_temple.jpg',
                    tourName: 'Taj Mahal',
                    price: '999',
                    rating: 3.4.toString(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
