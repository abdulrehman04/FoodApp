import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class NoAccountScreenViewModel extends BaseViewModel {
  Logger log;

  NoAccountScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
