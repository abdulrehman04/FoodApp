import 'dart:async';
import 'package:FoodApp/Models/Delivery%20Options.dart';
import 'package:FoodApp/Models/Restaurant.dart';
import 'package:FoodApp/Models/cartItem.dart';
import 'package:FoodApp/core/Services/LocationServices.dart';
import 'package:android_intent/android_intent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';
import 'Models/Order.dart';
import 'core/Services/FirebaseServices.dart';

//Variables
final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
Position currentPosition = Position(latitude: 28.3001, longitude: 70.1077);
List<Restaurant> restaurants=[];
BuildContext currentContext;
Order currentOrder;
bool opened = false;
List<CartItem> cart = [];
String currentUser = 'aKS6YGmw1F5i9g6ktcXr';
bool locationEnabled = false;

List <DeliveryOptions> restaurantsOrderedByDeliveryOptions = [
  DeliveryOptions(
    options: 'In-Person\\nPickup',
    comment: 'Pickup your\\norder at your\\nfavourite cafe.',
    restaurants:[],
  ),
  DeliveryOptions(
    options: 'Delivery',
    comment: "Your Food will\\nbe deliverd hot\\nor it's free",
    restaurants:[],
  ),
  DeliveryOptions(
    options: 'Catering',
    comment: 'Big or small\\nGroups, We fit\\nyour size.',
    restaurants:[],
  ),
  DeliveryOptions(
    options: 'Curbside\nPickup',
    comment: 'Let us know\nwhen you\nare here.',
    restaurants:[],
  ),

];


//Methods
getNearbyRestaurants() async {
  if(!await (LocationServices.LocationEnabled())){
    LocationServices.checkGps();
  }
  else{
    LocationServices.getCurrentLocation().then((event){
      if(currentPosition == null){
        currentPosition = Position(latitude: 28.3001, longitude: 70.1077);  //Disable this in realtime scenarios
//      currentPosition = event;   Enable this in realtime scenarios
        FirebaseServices.searchRestaurantsInRange();
      }
      else{
        if(!LocationServices.isLocationSame(event)){
//        currentPosition = event;    Enable this in realtime scenarios
          currentPosition = Position(latitude: 28.3001, longitude: 70.1077);  //Disable this in realtime scenarios
          FirebaseServices.searchRestaurantsInRange();
        }
      }
    });
  }
}

void getRestaurantsForEachDeliveryOption() {
  restaurantsOrderedByDeliveryOptions.forEach((option) {
    List<Restaurant> rests = [];
    restaurants.forEach((rest) {
      List restaurantOptions = rest.deliveryOptions;
      if(restaurantOptions.contains(option.options)){
        rests.add(rest);
      }
    });
    option.restaurants = rests;
  });
}

