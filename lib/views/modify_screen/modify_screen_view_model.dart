import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class ModifyScreenViewModel extends BaseViewModel {
  Logger log;
  


  ModifyScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
