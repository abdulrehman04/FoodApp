import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class TimeScreenViewModel extends BaseViewModel {
  Logger log;
  
  TimeScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
