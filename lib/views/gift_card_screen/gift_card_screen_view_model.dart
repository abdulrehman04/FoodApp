import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class GiftCardScreenViewModel extends BaseViewModel {
  Logger log;

  GiftCardScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
