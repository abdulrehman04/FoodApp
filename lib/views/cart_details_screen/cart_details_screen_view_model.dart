import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class CartDetailsScreenViewModel extends BaseViewModel {
  Logger log;

  CartDetailsScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
