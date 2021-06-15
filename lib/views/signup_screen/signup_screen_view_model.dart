import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class SignupScreenViewModel extends BaseViewModel {
  Logger log;

  SignupScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
