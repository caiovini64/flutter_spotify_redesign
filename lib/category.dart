import 'package:flutter/material.dart';
import 'package:spotify/const.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SingleChildScrollView(child: PodCategory(text: 'Popular', tap: true)),
          SingleChildScrollView(
              child: PodCategory(text: 'Recomendados', tap: false)),
          SingleChildScrollView(
              child: PodCategory(text: 'Tecnologia', tap: false)),
          SingleChildScrollView(child: PodCategory(text: 'Humor', tap: false)),
          SingleChildScrollView(
              child: PodCategory(text: 'Esporte', tap: false)),
          SingleChildScrollView(
              child: PodCategory(text: 'Política', tap: false)),
        ],
      ),
    );
  }
}

class PodCategory extends StatelessWidget {
  const PodCategory({
    Key key,
    @required this.text,
    @required this.tap,
  }) : super(key: key);

  final String text;
  final bool tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 40),
        height: 24,
        child: Row(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                color: tap == true ? white : white.withOpacity(0.4),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
