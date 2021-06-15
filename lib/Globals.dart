import 'dart:async';

import 'package:FoodApp/Models/cartItem.dart';
import 'package:FoodApp/views/bottom_bar/bottom_bar_view.dart';
import 'package:android_intent/android_intent.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';
import 'Models/Order.dart';

//Variables
final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
Position currentPosition = Position(latitude: 28.3001, longitude: 70.1077);
List<DocumentSnapshot> restaurants=[];
int count = 0;
BuildContext currentContext;
bool locationEnabled = false;
List<Map> restaurantsOrderedByDeliveryOptions = [{
  'option': 'In-Person\\nPickup',
  'comment': 'Pickup your\\norder at your\\nfavourite cafe.',
  'restaurants':[],
},{
  'option': 'Delivery',
  'comment': "Your Food will\\nbe deliverd hot\\nor it's free",
  'restaurants':[],
},
  {
    'option': 'Catering',
    'comment': 'Big or small\\nGroups, We fit\\nyour size.',
    'restaurants':[],
  },
  {
    'option': 'Curbside\nPickup',
    'comment': 'Let us know\nwhen you\nare here.',
    'restaurants':[],
  }];
Order currentOrder;
bool opened = false;
List<CartItem> cart = [];
String currentUser = 'aKS6YGmw1F5i9g6ktcXr';

locationTimer(){
  getNearbyRestaurants();
  Timer.periodic(Duration(seconds: 2), (timer) {
    getNearbyRestaurants();
  });
}


//Methods
Future _checkGps() async {
  if (!(await Geolocator().isLocationServiceEnabled())) {
    if (Theme.of(currentContext).platform == TargetPlatform.android) {
      if(opened !=true){
        showDialog(
            context: currentContext,
            builder: (BuildContext context) {
              opened = true;
              return AlertDialog(
                title: Text("Can't get current location"),
                content:const Text('Please make sure you enable GPS and try again'),
                actions: <Widget>[
                  FlatButton(child: Text('Ok'),
                      onPressed: () {
                        final AndroidIntent intent = AndroidIntent(
                            action: 'android.settings.LOCATION_SOURCE_SETTINGS');
                        intent.launch();
                        Navigator.of(context, rootNavigator: true).pop();
//                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomBarView()), (route) => false);
                      }),
                ],
              );
            }).whenComplete(() async {
          opened = false;
          if((await Geolocator().isLocationServiceEnabled())){
            getLocationProceeding();
          }
        });
      }
    }
    else{
      if(opened!=true){
        showDialog(
            context: currentContext,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Can't get current location"),
                content:const Text('Please make sure you enable GPS and try again'),
                actions: <Widget>[
                  FlatButton(child: Text('Ok'),
                      onPressed: () {
                        Navigator.pop(context);
//                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomBarView()), (route) => false);
                      }),
                ],
              );
            }).whenComplete(() async {
          opened = false;
          if((await Geolocator().isLocationServiceEnabled())){
            getLocationProceeding();
          }
        });
      }
    }
  }
}

Future _gpsService() async {
  if (!(await Geolocator().isLocationServiceEnabled())) {
    _checkGps();
    return null;
  } else
    return true;
}

getNearbyRestaurants() async {
  if(!(await Geolocator().isLocationServiceEnabled())){
    _checkGps();
  }
  else{
    getLocationProceeding();
  }
}

void getLocationProceeding() {
  geolocator.getCurrentPosition().then((event){
    if(currentPosition == null){
      currentPosition = Position(latitude: 28.3001, longitude: 70.1077);
//      currentPosition = event;
      _searchRestaurantsInRange();
    }
    else{
      if(event.latitude != currentPosition.latitude || event.longitude != currentPosition.longitude){
//        currentPosition = event;
        currentPosition = Position(latitude: 28.3001, longitude: 70.1077);
        _searchRestaurantsInRange();
      }
    }
  });
}

showSnack(BuildContext context, text){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

_searchRestaurantsInRange() async {
  restaurants = [];
  print('Called');
  await FirebaseFirestore.instance.collection('Restaurants').get().then((value){
    value.docs.forEach((element) {
      var lat = element.data()['lat'];
      var long = element.data()['long'];
      if(_is10Miles(lat, long)){
        if(!restaurants.any((doc) => doc.id == element.id)){
          restaurants.add(element);
        }
      }
    });
    _getRestaurantsForEachDeliveryOption();
  });
}

//void _getDeliveryOptions() {
//  restaurants.forEach((rest) {
//    Map options = Map.from(rest.data())['deliveryOptions'];
//    options.forEach((key, value) {
//      bool found = false;
//      restaurantsOrderedByDeliveryOptions.forEach((element) {
//        if(element.containsValue(key)){
//          found = true;
//        }
//      });
//      if(found == false){
//        restaurantsOrderedByDeliveryOptions.add({
//          'option': key,
//          'comment': value,
//          'restaurants':[],
//        });
//      }
//    });
//
//  });
//  _getRestaurantsForEachDeliveryOption();
//}

void _getRestaurantsForEachDeliveryOption() {
  restaurantsOrderedByDeliveryOptions.forEach((option) {
    List rests = [];
    restaurants.forEach((rest) {
      Map restaurantOptions = Map.from(rest.data())['deliveryOptions'];
      if(restaurantOptions.containsKey(option['option'])){
        rests.add(rest);
      }
    });
    option['restaurants'] = rests;
  });
}

_is10Miles(double lat, double long){
  Distance distance = new Distance();
  double miles = distance.as(LengthUnit.Mile, new LatLng(currentPosition.latitude,currentPosition.longitude),new LatLng(lat, long));
  if(miles<10){
    return true;
  }
  else{
    return false;
  }
}

