import 'package:flutter/material.dart';

import '../constants.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryState();
}

class CategoryState extends State<Category> {
  List<String> _titles = ["Home Page", "Recommend", "Hot list", "New Online", "Over time"];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _titles.length,
            itemBuilder: (context, index) => _buildItem(index)),
      ),
    );
  }

  Widget _buildItem(int index) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _titles[index],
              style: TextStyle(color: _currentIndex == index ? Colors.black:kTextColor.withOpacity(0.6)),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              width: 30,
              height: 2,
              color: _currentIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}