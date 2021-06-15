import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class CommunicationPreferenceScreenViewModel extends BaseViewModel {
  Logger log;
  bool switchvalue = true;
  bool switchvalue1 = true;
  CommunicationPreferenceScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
