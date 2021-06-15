import 'package:cloud_firestore/cloud_firestore.dart';

import 'cartItem.dart';

class Order{
  DocumentSnapshot selectedRestaurant;
  String restaurantId, selectedMethod, from;
  List<CartItem> cart;
  bool later;
  DateTime laterTime;

  Order({this.restaurantId, this.cart, this.selectedMethod, this.later, this.laterTime, this.selectedRestaurant, this.from});

  toJson(){
    return {
      'restaurantId':this.restaurantId,
      'cart':List.generate(cart.length, (index){
        return cart[index].toJson();
      }),
      'laterTime':this.laterTime,
      'later':this.later,
      'selectedMethod':this.selectedMethod,
      'from':this.from,
    };
  }
}