import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class PaymentOptionsScreenViewModel extends BaseViewModel {
  Logger log;

  PaymentOptionsScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
