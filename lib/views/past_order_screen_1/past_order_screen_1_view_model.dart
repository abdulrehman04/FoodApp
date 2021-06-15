import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class PastOrderScreen1ViewModel extends BaseViewModel {
  Logger log;

  PastOrderScreen1ViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
