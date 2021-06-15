import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class GetCoffeeScreenViewModel extends BaseViewModel {
  Logger log;

  GetCoffeeScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
