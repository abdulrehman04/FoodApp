import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class PrivacyPolicyScreenViewModel extends BaseViewModel {
  Logger log;

  PrivacyPolicyScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
