import 'package:FoodApp/Models/Category.dart';
import 'package:FoodApp/Models/Restaurant.dart';
import 'package:FoodApp/core/Services/Utility.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../Globals.dart';

class FirebaseServices{

  static var db = FirebaseFirestore.instance;

  static searchRestaurantsInRange() async {
    restaurants = [];
    await db.collection('Restaurants').get().then((value){
      value.docs.forEach((element) {
        var lat = element.data()['lat'];
        var long = element.data()['long'];
        if(Utility.is10Miles(lat, long)){
          if(!restaurants.any((res) => res.id == element.id)){
            Map DBcategories = Map.from(element.get('categories'));
            List <Category> cats = [];
            DBcategories.forEach((key, value) {
              cats.add(Category(name: key, image: value['image'], Foods: value['foods'], subtitle: value['subtitle'],));
            });
            Restaurant restaurant = Restaurant(id: element.id,name: element.get('name'), lng: element.get('long'), lat: element.get('lat'), address: element.get('address'), categories: cats, deliveryOptions: element.get('deliveryOptions'));
            restaurants.add(restaurant);
          }
        }
      });
      getRestaurantsForEachDeliveryOption();
    });
  }

  static Future getDocFromCollection(String collection, String doc) async {
    var result = await FirebaseFirestore.instance.collection(collection).doc(doc).get();
    return result;
  }

  static Future pushDataToCollection(String collection, data) async {
    var result = await db.collection(collection).add(data);
    return result;
  }

  static Future updateDocOnCollection(String collection, String doc, data) async {
    var result = await db.collection(collection).doc(doc).update(data);
    return result;
  }
}