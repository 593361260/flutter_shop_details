import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildBar(),
      body: HomeBody(),
    );
  }

  AppBar _buildBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.grey,
            ),
            onPressed: () {}),
      ],
    );
  }
}
