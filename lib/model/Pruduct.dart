import 'dart:ui';

import 'package:flutter/material.dart';

//产品model
class Product {
  final String image, title, description;
  final int prices, size, id;
  final Color color;

  Product(this.image, this.title, this.description, this.prices, this.size,
      this.id, this.color);
}

const description = "大叔大婶多撒大萨达是打蜡杀手大萨达所sad收到sad按时";
List<Product> list = [
  Product("assets/images/bag_1.png", "爱马仕", description, 199, 1, 1, Color(0xff3D82AE)),
  Product("assets/images/bag_2.png", "库奇", description, 299, 1, 2, Color(0xffD3A984)),
  Product("assets/images/bag_3.png", "香奈儿", description, 399, 1, 3, Color(0xff989493)),
  Product("assets/images/bag_4.png", "卡地亚", description, 499, 1, 4, Color(0xffDDAC92)),
  Product("assets/images/bag_5.png", "耐克", description, 599, 1, 5, Color(0xffFB7883)),
  Product("assets/images/bag_6.png", "阿迪达斯", description, 699, 1, 6, Color(0xff9E9E9E)),
];
