import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class LoginScreenViewModel extends BaseViewModel {
  Logger log;

  LoginScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
