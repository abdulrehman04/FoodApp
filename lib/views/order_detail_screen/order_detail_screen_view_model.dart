import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class OrderDetailScreenViewModel extends BaseViewModel {
  Logger log;

  OrderDetailScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
