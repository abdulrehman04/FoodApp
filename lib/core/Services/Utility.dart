import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';

import '../../Globals.dart';

class Utility{
  static is10Miles(double lat, double long){
    Distance distance = new Distance();
    double miles = distance.as(LengthUnit.Mile, new LatLng(currentPosition.latitude,currentPosition.longitude),new LatLng(lat, long));
    if(miles<10){
      return true;
    }
    else{
      return false;
    }
  }

  static getDistance(double lat, double long) {
    Distance distance = new Distance();
    double miles = distance.as(LengthUnit.Mile, new LatLng(currentPosition.latitude,currentPosition.longitude),new LatLng(lat, long));
    return miles;
  }

}

showSnack(BuildContext context, text){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}


