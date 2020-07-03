import 'package:flutter/material.dart';
import 'package:spotify/const.dart';

class Recent extends StatelessWidget {
  const Recent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Row(
        children: <Widget>[
          recent(
              context, 'assets/images/hipsters-logo.png', 'Hipster Ponto Tech'),
          recent(context, 'assets/images/268x0w.jpg', 'Lambda3 Podcast'),
        ],
      ),
    );
  }

  GestureDetector recent(context, image, title) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(top: 21, right: 20),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: SizedBox(
                    width: 114,
                    height: 114,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(image),
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: white, fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
