import 'package:flutter/material.dart';
import 'package:spotify/const.dart';
import 'package:spotify/recent.dart';
import 'package:spotify/previews.dart';
import 'package:spotify/category.dart';
import 'package:spotify/categoryCards.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: black,
              border: Border(top: BorderSide(color: lowBlack, width: 2.0))),
          height: 80,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.home,
                      color: white,
                      size: 28.0,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: white.withOpacity(0.4),
                      size: 28.0,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.library_music,
                      color: white.withOpacity(0.4),
                      size: 28.0,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.album,
                      color: white.withOpacity(0.4),
                      size: 28.0,
                    ),
                    onPressed: () {})
              ],
            ),
          )),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: <Widget>[
            SearchBox(),
            TextTitle(text: 'Tocados recentemente'),
            Recent(),
            TextTitle(text: 'Previews'),
            Previews(),
            Category(),
            CategoryCards(),
          ],
        ),
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 40),
      height: 24,
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              color: white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 30, right: 30),
      decoration: BoxDecoration(
        color: lowBlack.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: white),
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}
