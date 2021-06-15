import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class AddGiftCardScreenViewModel extends BaseViewModel {
  Logger log;

  AddGiftCardScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
