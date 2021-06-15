import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

import '../../Globals.dart';

class SplashScreenViewModel extends BaseViewModel {
  Logger log;

  SplashScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());

  }
}
