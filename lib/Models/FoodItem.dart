import 'package:FoodApp/Models/NutritionalInfo.dart';
import 'package:FoodApp/Models/sizeAndPrice.dart';

class FoodItem{
  String name, image, detailedIngredient, about, allergens, tax, id;
  List<sizeAndPrice> SAP;
  List <NutritionalInfo> nutritionalInfo;

  FoodItem({this.image, this.name, this.nutritionalInfo, this.about, this.allergens, this.detailedIngredient, this.SAP, this.tax, this.id});
}