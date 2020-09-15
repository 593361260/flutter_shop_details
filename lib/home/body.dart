import 'package:flu_shop_details/details/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/Pruduct.dart';
import 'home_body_list.dart';
import 'home_body_navigator.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        Expanded(
          child: GridView.builder(
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75),
            itemBuilder: (context, index) => HomeBodyItem(
                product: list[index],
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsScreen(product: list[index],);
                  }));
                }),
          ),
        )
      ],
    );
  }
}
