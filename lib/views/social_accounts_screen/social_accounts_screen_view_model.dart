import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class SocialAccountsScreenViewModel extends BaseViewModel {
  Logger log;

  SocialAccountsScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
