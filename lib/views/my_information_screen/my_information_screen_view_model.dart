import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class MyInformationScreenViewModel extends BaseViewModel {
  Logger log;

  MyInformationScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
