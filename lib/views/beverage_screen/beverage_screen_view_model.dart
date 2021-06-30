import 'package:FoodApp/Models/FoodItem.dart';
import 'package:FoodApp/Models/NutritionalInfo.dart';
import 'package:FoodApp/Models/sizeAndPrice.dart';
import 'package:FoodApp/core/Services/FirebaseServices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';
import 'package:FoodApp/Models/Category.dart';

class BeverageScreenViewModel extends BaseViewModel {
  Logger log;
  List foods;
  Category category;
  String categoryImage;
  String subtitle;
  List<FoodItem> foodDetails = [];
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
    foods = category.Foods;
    getFoods();
  }

  void getFoods() {

    foods.forEach((element) {
      FirebaseServices.getDocFromCollection('FoodItems', element).then((value){

        Map sizeAndPrices = value.get('sizeAndPrice');
        List<sizeAndPrice> SAP = [];
        sizeAndPrices.forEach((key, value) {
          SAP.add(sizeAndPrice(size: key, price: value));
        });

        Map nutritionalInfo = value.get('nutritionalInfo');
        List<NutritionalInfo> nutrition = [];
        nutritionalInfo.forEach((key, value) {
          nutrition.add(NutritionalInfo(name: key, quantity: value));
        });

        foodDetails.add(FoodItem(image: value.get('image'), name: value.get('name'), about: value.get('about'), allergens: value.get('allergens'), detailedIngredient: value.get('detailedIngredient'), nutritionalInfo: nutrition, SAP: SAP, tax: value.get('tax'), id: value.id));
        notifyListeners();
      });
    });
  }
}
