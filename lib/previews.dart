import 'package:flutter/material.dart';
import 'package:spotify/const.dart';

class Previews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 21),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: <Widget>[
              imagePreview(context, 'assets/images/naut.jpg'),
              imagePreview(context,
                  'assets/images/1255739-1576257656190-800654472865c.jpg'),
              imagePreview(
                  context, 'assets/images/scicast2_itunes_By_Deviante2.jpg'),
              imagePreview(context, 'assets/images/268x0w.jpg'),
              imagePreview(context, 'assets/images/jovem.jpg'),
              imagePreview(context, 'assets/images/hipsters-logo.png'),
            ],
          ),
        ),
      ),
    );
  }

  Container imagePreview(context, image) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 70.0,
      width: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: green,
          width: 03,
        ),
      ),
      child: CircleAvatar(
        child: ClipOval(
          child: GestureDetector(
            child: Image(
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
