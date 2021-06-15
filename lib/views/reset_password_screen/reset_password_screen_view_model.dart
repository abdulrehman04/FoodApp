import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class ResetPasswordScreenViewModel extends BaseViewModel {
  Logger log;

  ResetPasswordScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
