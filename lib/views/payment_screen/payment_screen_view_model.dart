import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class PaymentScreenViewModel extends BaseViewModel {
  Logger log;

  PaymentScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
