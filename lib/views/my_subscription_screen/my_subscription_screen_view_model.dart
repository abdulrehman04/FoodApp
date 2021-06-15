import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class MySubscriptionScreenViewModel extends BaseViewModel {
  Logger log;

  MySubscriptionScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
