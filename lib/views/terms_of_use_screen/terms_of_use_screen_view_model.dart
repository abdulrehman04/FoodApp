import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class TermsOfUseScreenViewModel extends BaseViewModel {
  Logger log;

  TermsOfUseScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
