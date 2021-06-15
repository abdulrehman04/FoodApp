import 'package:cloud_firestore/cloud_firestore.dart';

class CartItem{
  int quantity;
  String size, specialInstructions, id;
  double unitPrice;
  DocumentSnapshot item;


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