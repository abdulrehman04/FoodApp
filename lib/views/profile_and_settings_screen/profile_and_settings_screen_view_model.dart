import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class ProfileAndSettingsScreenViewModel extends BaseViewModel {
  Logger log;

  ProfileAndSettingsScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
