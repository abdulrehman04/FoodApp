import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class CommunicationPreferenceDialogueViewModel extends BaseViewModel {
  Logger log;

  CommunicationPreferenceDialogueViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
