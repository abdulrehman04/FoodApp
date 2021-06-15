import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class RapidPickupScreen2ViewModel extends BaseViewModel {
  Logger log;

  RapidPickupScreen2ViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
