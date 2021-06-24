import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/Models/FoodItem.dart';
import 'package:FoodApp/Models/cartItem.dart';
import 'package:FoodApp/Models/sizeAndPrice.dart';
import 'package:FoodApp/views/beverage_screen/beverage_screen_view_model.dart';
import 'package:FoodApp/widgets/smart_widgets/nutritional_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class ItemDetailScreenViewModel extends BaseViewModel {
  Logger log;
  FoodItem item;
  BeverageScreenViewModel beverageScreenViewModel;
  sizeAndPrice selectedSize = null;
  int quantity = 1;
  String specialInstructions = '';

  ItemDetailScreenViewModel({this.item, this.beverageScreenViewModel}) {
    this.log = getLogger(this.runtimeType.toString());
    selectedSize = item.SAP[0];
  }

  showNutritionalInfo(){
    int currentIndex = 0;
    return List.generate((item.nutritionalInfo.length/2).toInt(), (_){
      var row =  Row(
        children: [
          NutritionalInfo(
            text1: '${item.nutritionalInfo[currentIndex].name}',
            text2: '${item.nutritionalInfo[currentIndex].quantity}',
          ),
          SizedBox(
            width: 70,
          ),
          NutritionalInfo(
            text1: '${item.nutritionalInfo[currentIndex + 1].name}',
            text2: '${item.nutritionalInfo[currentIndex + 1].quantity}',
          ),
        ],
      );
      currentIndex +=2;
      return row;
    });
  }

  addToCart(){
      int found = -1;
      for(CartItem i in cart){
        if(i.id == item.id && i.size == selectedSize.size){
          found = cart.indexOf(i);
        }
      }
      if(found == -1){
        cart.add(CartItem(quantity: quantity, size: selectedSize.size, item: item, unitPrice:double.parse(selectedSize.price), specialInstructions: specialInstructions, id: item.id));
      }
      else{
        cart[found].quantity+=quantity;
      }
      beverageScreenViewModel.notifyListeners();
      return true;
  }
}
