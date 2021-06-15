import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class ArrivedForOrderScreenViewModel extends BaseViewModel {
  Logger log;

  ArrivedForOrderScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
