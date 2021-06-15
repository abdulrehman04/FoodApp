import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class AddCreditCardScreenViewModel extends BaseViewModel {
  Logger log;
  bool checkBox = false;

  AddCreditCardScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
