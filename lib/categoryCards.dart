import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 21),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: <Widget>[
              buildCards(context, 'assets/images/milk.jpg'),
              buildCards(context, 'assets/images/naut.jpg'),
              buildCards(context, 'assets/images/poucas.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildCards(context, image) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
