import 'package:FoodApp/Models/Restaurant.dart';

class DeliveryOptions{
  String options, comment;
  List<Restaurant> restaurants;

  DeliveryOptions({this.restaurants, this.comment, this.options});
}