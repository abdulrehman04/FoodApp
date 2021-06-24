import 'package:FoodApp/Models/Category.dart';

class Restaurant {
  String name, address, id;
  double lat, lng;
  List<Category> categories;
  List deliveryOptions;

  Restaurant({this.name, this.id, this.lat, this.lng, this.address, this.categories, this.deliveryOptions});
}