import 'package:FoodApp/Models/FoodItem.dart';

class CartItem{
  int quantity;
  String size, specialInstructions, id;
  double unitPrice;
  FoodItem item;


  CartItem({this.quantity, this.item, this.size, this.unitPrice, this.specialInstructions, this.id});

  Map toJson(){
    return {
      'quantity': this.quantity,
      'size': this.size,
      'specialInstructions': this.specialInstructions,
      'foodId': this.id,
    };
  }
}