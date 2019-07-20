import 'package:flutter/material.dart';

class RecommendTypes extends StatelessWidget {
  const RecommendTypes({
    Key key,
    @required this.color,
    @required this.RecommnedType,

  }) : super(key: key);

  final Color color;
  final String RecommnedType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 15),
      child: Text(
        '$RecommnedType',
        style: TextStyle(
          fontFamily: 'BreeSerif',
          fontWeight: FontWeight.w900,
          fontSize: 19.0,
          color: color,
        ),
      ),
    );
  }
}
