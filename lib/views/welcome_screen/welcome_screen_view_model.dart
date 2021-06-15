import 'package:android_intent/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class WelcomeScreenViewModel extends BaseViewModel {
  Logger log;
  BuildContext context;

  final List<String> imgList = [
    'food1.jpg',
    'food2.png',
    'food4.jpg',
  ];

  WelcomeScreenViewModel(this.context) {
    this.log = getLogger(this.runtimeType.toString());
//    _gpsService();
  }
}
