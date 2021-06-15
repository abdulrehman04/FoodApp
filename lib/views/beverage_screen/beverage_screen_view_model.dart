import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class BeverageScreenViewModel extends BaseViewModel {
  Logger log;
  List foods;
  Map category;
  String categoryImage;
  String subtitle;
  List<DocumentSnapshot> foodDetails = [];
  DocumentSnapshot restaurant;
  Map<String, List<String>> beverages = {
    'coffee1.png': [
      'Cafe Con Leche',
      '\$2.75 Grande',
    ],
    'coffee2.png': [
      'Expresso',
      '\$2.12 Grande',
    ],
    'coffee3.png': [
      'Cappuccino',
      '\$2.76 Grande',
    ],
    'coffee4.png': [
      'Cafe Americano',
      '\$2.45 Grande',
    ],
  };

  BeverageScreenViewModel({this.category}) {
    this.log = getLogger(this.runtimeType.toString());
    categoryImage = category['image'];
    subtitle = category['subtitle'];
    foods = category['foods'];
    getFoods();
  }

  void getFoods() {
    foods.forEach((element) {
      FirebaseFirestore.instance.collection('FoodItems').doc(element).get().then((value){
        foodDetails.add(value);
        notifyListeners();
      });
    });
  }
}
