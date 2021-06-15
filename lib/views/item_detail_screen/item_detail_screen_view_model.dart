import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/Models/cartItem.dart';
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
  DocumentSnapshot item;
  BeverageScreenViewModel beverageScreenViewModel;
  Map sizeAndPrices;
  List prices = [];
  List sizes = [];
  List nutritions = [];
  List nutritionAmounts = [];
  int selectedSize = 1;
  String selectedDropdownSize = null;
  int quantity = 1;
  String specialInstructions = '';

  ItemDetailScreenViewModel({this.item, this.beverageScreenViewModel}) {
    sizeAndPrices = item.get('sizeAndPrice');
    this.log = getLogger(this.runtimeType.toString());
    _getSizesAndPrices();
  }

  void _getSizesAndPrices() {
    sizeAndPrices.forEach((key, value) {
      sizes.add(key);
      prices.add(value);
      notifyListeners();
    });
    Map nutritionalInfo = item.get('nutritionalInfo');
    nutritionalInfo.forEach((key, value) {
      nutritions.add(key);
      nutritionAmounts.add(value);
    });
  }


  showNutritionalInfo(){
    int currentIndex = 0;
    return List.generate((nutritions.length/2).toInt(), (_){
      var row =  Row(
        children: [
          NutritionalInfo(
            text1: '${nutritions[currentIndex]}',
            text2: '${nutritionAmounts[currentIndex]}',
          ),
          SizedBox(
            width: 70,
          ),
          NutritionalInfo(
            text1: '${nutritions[currentIndex+1]}',
            text2: '${nutritionAmounts[currentIndex + 1]}',
          ),
        ],
      );
      currentIndex +=2;
      return row;
    });
  }

  Future showModel(BuildContext context, ) async {
    await showModalBottomSheet(context: context, builder: (context){
      return StatefulBuilder(
          builder: (context, sst){
            return Container(
              height: 200,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  DropdownButton(
                      isExpanded: true,
                      value: selectedDropdownSize,
                      hint: Text('Select Size'),
                      onChanged: (val){
                        sst((){
                          selectedDropdownSize = val;
                        });
                      },
                      items: sizes.map((e){
                        return DropdownMenuItem(child: Text(e), value: e,);
                      }).toList()
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Quantity'
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (val){
                      quantity = int.parse(val);
                    },
                  ),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blue,
                    child: Text('Add to Cart'),
                    onPressed: (){
                      int found = -1;
                      for(CartItem i in cart){
                        if(i.id == item.id && i.size == selectedDropdownSize){
                          found = cart.indexOf(i);
                        }
                      }
                      if(found == -1){
                        cart.add(CartItem(quantity: quantity, size: selectedDropdownSize, item: item, unitPrice:double.parse(sizeAndPrices[selectedDropdownSize]), specialInstructions: specialInstructions, id: item.id));
                      }
                      else{
                        cart[found].quantity+=quantity;
                      }
//                      cart.add(CartItem(quantity: quantity, size: selectedDropdownSize, item: item, unitPrice:double.parse(sizeAndPrices[selectedDropdownSize]), specialInstructions: specialInstructions, id: item.id));
                      Navigator.pop(context);
                      beverageScreenViewModel.notifyListeners();
                      return true;

                    },
                  ),
                ],
              ),
            );
          }
      );
    });
  }

  addToCart(){
//    onPressed: (){
      int found = -1;
      for(CartItem i in cart){
        if(i.id == item.id && i.size == selectedDropdownSize){
          found = cart.indexOf(i);
        }
      }
      if(found == -1){
        cart.add(CartItem(quantity: quantity, size: selectedDropdownSize, item: item, unitPrice:double.parse(sizeAndPrices[selectedDropdownSize]), specialInstructions: specialInstructions, id: item.id));
      }
      else{
        cart[found].quantity+=quantity;
      }
//                      cart.add(CartItem(quantity: quantity, size: selectedDropdownSize, item: item, unitPrice:double.parse(sizeAndPrices[selectedDropdownSize]), specialInstructions: specialInstructions, id: item.id));
//      Navigator.pop(context);
      beverageScreenViewModel.notifyListeners();
      return true;

//    },
  }
}
