import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class MenuScreenViewModel extends BaseViewModel {
  Logger log;

  MenuScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
