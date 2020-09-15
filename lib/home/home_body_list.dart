import 'package:flu_shop_details/model/Pruduct.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeBodyItem extends StatelessWidget{
  final Product product;
  final Function press;

  const HomeBodyItem({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(product.image),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: product.color),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding / 4, horizontal: kDefaultPadding / 5),
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
          ),
        ],
      ),
    );
  }
}