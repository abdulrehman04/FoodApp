import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class TastePreferencesScreenViewModel extends BaseViewModel {
  Logger log;

  TastePreferencesScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
