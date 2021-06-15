import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class PastOrdersScreenViewModel extends BaseViewModel {
  Logger log;

  PastOrdersScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
