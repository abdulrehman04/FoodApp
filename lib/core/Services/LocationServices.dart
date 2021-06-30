import 'package:android_intent/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:FoodApp/Globals.dart';

import 'FirebaseServices.dart';

class LocationServices{

  static LocationEnabled() async {
    return (await Geolocator().isLocationServiceEnabled());
  }

  static isLocationSame(event){
    if(event.latitude != currentPosition.latitude || event.longitude != currentPosition.longitude){
      return false;
    }
    else{
      return true;
    }
  }

  static Future getCurrentLocation() async {
    var result = await geolocator.getCurrentPosition();
    return result;
  }


  static Future checkGps() async {
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
                        }),
                  ],
                );
              });
        }
      }
    }
  }
}