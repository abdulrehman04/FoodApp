import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class TastePreferencesScreen2ViewModel extends BaseViewModel {
  Logger log;

  TastePreferencesScreen2ViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
