import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class ChooseCafeScreenViewModel extends BaseViewModel {
  Logger log;

  ChooseCafeScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
//    getRestaurants();
  }

//  Future<void> getRestaurants() async {
//    await FirebaseFirestore.instance.collection('Restaurants').get().then((value){
//      value.docs.forEach((element) {
//        var lat = element.data()['lat'];
//        var long = element.data()['long'];
//        if(_is10Miles(lat, long)){
//          hasDesiredDelivery
//          restaurants.add(element);
//        }
//      });
//      _getDeliveryOptions();
//    });
//  }
//
//
//  _is10Miles(double lat, double long){
//    Distance distance = new Distance();
//    double miles = distance.as(LengthUnit.Mile, new LatLng(currentPosition.latitude,currentPosition.longitude),new LatLng(lat, long));
//    if(miles<10){
//      return true;
//    }
//    else{
//      return false;
//    }
//  }
}
