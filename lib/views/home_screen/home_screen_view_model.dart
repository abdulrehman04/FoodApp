import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/choose_cafe_screen/choose_cafe_screen_view.dart';
import 'package:FoodApp/views/home_screen/home_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/order_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:FoodApp/core/logger.dart';

class HomeScreenViewModel extends BaseViewModel {
  Logger log;

  final List<String> imgList = [
    'f1.jpg',
    'f2.jpg',
    'f3.jpg',
  ];

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
                          leading: e['option'].replaceAll("\\n", "\n"),
                          text: "${e['comment'].replaceAll("\\n", "\n")}",
                          image: "assets/pickup.png",
                          onpressed: () {
                            Navigator.pop(context);
                            currentOrder.selectedMethod = e['option'].replaceAll("\\n", "\n");
                            print(e['restaurants']);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ChooseCafeScreenView(e['restaurants']);
                                }));
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

  HomeScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
