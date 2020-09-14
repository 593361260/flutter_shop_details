import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../model/Pruduct.dart';
import 'home_body_navigator.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            "女人",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Category(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: _buildCard(list[0], size),
        ),
      ],
    );
  }

  Widget _buildCard(Product product, Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: size.width / 2,
          height: size.height / 2.5,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(product.image),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [BoxShadow()],
              color: product.color),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding / 2, top: kDefaultPadding / 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: product.title + "\n",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
                TextSpan(
                    text: "\$${product.prices}",
                    style: TextStyle(color: kTextColor, fontSize: 12)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
