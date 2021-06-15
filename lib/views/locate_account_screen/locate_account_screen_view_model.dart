import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class LocateAccountScreenViewModel extends BaseViewModel {
  Logger log;

  LocateAccountScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
