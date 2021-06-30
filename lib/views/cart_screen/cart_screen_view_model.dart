import 'package:FoodApp/Models/cartItem.dart';
import 'package:FoodApp/core/Services/FirebaseServices.dart';
import 'package:FoodApp/core/Services/Utility.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/beverage_screen/beverage_screen_view_model.dart';
import 'package:FoodApp/widgets/smart_widgets/order_option.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';
import '../../Globals.dart';

class CartScreenViewModel extends BaseViewModel {
  BeverageScreenViewModel beverageScreenViewModel;

  Logger log;
  Map availableMethods;
  List options = [], comment =[];

  void showDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: ScreenUtil().setHeight(500),
            width: ScreenUtil().setWidth(350),
            child: Center(
              child: Scaffold(
                backgroundColor: Color(0xFF1f2326),
                body: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            FlutterIcons.close_ant,
                            color: themecolor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: restaurantsOrderedByDeliveryOptions.map((e){
                        return NewOrderOption(
                          leading: e.options.replaceAll("\\n", "\n"),
                          text: "${e.comment.replaceAll("\\n", "\n")}",
                          image: "assets/pickup.png",
                          onpressed: () {
                            Navigator.pop(context);
                            currentOrder.selectedMethod = e.options.replaceAll("\\n", "\n");
                            notifyListeners();
                          },
                        );
                      }).toList(),
                    ),
//                    NewOrderOption(
//                      leading: "Delivery",
//                      text: "Your Food will\nbe deliverd hot\nor it's free,",
//                      image: "assets/pickup.png",
//                      onpressed: () {},
//                    ),
//                    NewOrderOption(
//                      leading: "Catering",
//                      text: "Big or small\nGroups, We fit\nyour size.",
//                      image: "assets/pickup.png",
//                      onpressed: () {},
//                    ),
//                    NewOrderOption(
//                      leading: "Curbside\nPickup",
//                      text: "Let us know\nwhen you\nare here.",
//                      image: "assets/pickup.png",
//                      onpressed: () {},
//                    ),
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  CartScreenViewModel(this.beverageScreenViewModel) {
//    availableMethods = currentOrder.selectedRestaurant.get('deliveryOptions');
    this.log = getLogger(this.runtimeType.toString());

//    availableMethods.forEach((key, value) {
//      options.add(key);
//      comment.add(value);
//    });
    notifyListeners();
  }

  void addQuantity(int index) {
    cart[index].quantity+=1;
    notifyListeners();
  }

  void subtractQuantity(int index) {
    if(cart[index].quantity>1){
      cart[index].quantity-=1;
      notifyListeners();
    }
  }

  void remove(CartItem index) {
    cart.remove(index);
    notifyListeners();
    beverageScreenViewModel.notifyListeners();
  }

  getSubtotal() {
    var total = 0.0;
    cart.forEach((element) {
      print(element.size);
      total += (element.unitPrice*element.quantity) + (double.parse(element.item.tax)*element.quantity);
    });

    return total.toStringAsPrecision(4);
  }

  getTaxes(){
    var total = 0.0;
    cart.forEach((element) {
      print(element.size);
      total += (double.parse(element.item.tax)*element.quantity);
    });

    return total;
  }

  void checkOut(BuildContext context) {
    currentOrder.from = currentUser;
    currentOrder.cart = cart;
    FirebaseServices.pushDataToCollection('Orders', currentOrder.toJson()).then((value){
      FirebaseServices.updateDocOnCollection('Users', currentUser, {
        'myOrders':FieldValue.arrayUnion([value.id]),
      }).then((_){
        showSnack(context, 'Order was successfully placed');
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        cart = [];
      });
    });
  }
}
