import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class NearByScreenViewModel extends BaseViewModel {
  Logger log;

  NearByScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
