import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class LookUpViewModel extends BaseViewModel {
  Logger log;

  LookUpViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
