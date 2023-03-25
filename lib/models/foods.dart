import 'package:flutter/material.dart';

class foodDetail {
  String? Title = '';
  String? PrimaryImage;
  List<String>? SubImage = List.empty();
  int? Price = 0;
  String? DeliveryInfo = '';
  String? ReturnPolicy = '';
  foodDetail(
      {title, primaryImage, price, deliveryInfo, returnPolicy, subImage}) {
    Title = title;
    PrimaryImage = primaryImage;
    Price = price;
    ReturnPolicy = returnPolicy;
    DeliveryInfo = deliveryInfo;
    SubImage = subImage;
  }
}
