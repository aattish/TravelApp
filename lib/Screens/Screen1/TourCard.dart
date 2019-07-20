import 'package:flutter/material.dart';

class TourCards extends StatelessWidget {
  final String imgUrl, tourName, price, rating;
  const TourCards({
    @required this.imgUrl,
    @required this.tourName,
    @required this.price,
    this.rating,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width/1.8,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width/1.8,
              height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height-75),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 15,top: 12),
                child: Text(
                  tourName,
                  style: TextStyle(
                    fontFamily: 'BreeSerif',
                    letterSpacing: 1,
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 300),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.8,
              height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height-125),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Rs $price',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                   RatingWidget(rating: rating,padding: EdgeInsets.all(6),),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:DecorationImage(image: ExactAssetImage(imgUrl) ,fit: BoxFit.fill),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key key,
    this.padding,
    @required this.rating,
  }) : super(key: key);

  final String rating;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.sentiment_satisfied,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            rating,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
