import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class MyRewardScreenViewModel extends BaseViewModel {
  Logger log;

  MyRewardScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
