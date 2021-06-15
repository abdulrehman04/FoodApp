

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

import '../../Globals.dart';

class BottomBarViewModel extends IndexTrackingViewModel {
  Logger log;
  BuildContext ctx;

  BottomBarViewModel({this.ctx}) {
    this.log = getLogger(this.runtimeType.toString());
    currentContext = ctx;
    getNearbyRestaurants();
//    locationTimer();
  }
}
