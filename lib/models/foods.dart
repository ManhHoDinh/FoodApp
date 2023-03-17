import 'package:flutter/material.dart';

class foodDetail {
  String? Title = '';
  Image? PrimaryImage;
  List<Image>? SubImage = List.empty();
  int? Price = 0;
  String? DeliveryInfo = '';
  String? ReturnPolicy = '';
  foodDetail(
      {title, primaryImage, price, deliveryInfo, returnPolicy, subImage}) {
    Title = title;
    PrimaryImage = primaryImage;
    Price = price;
    ReturnPolicy = returnPolicy;
    SubImage = subImage;
  }
}
