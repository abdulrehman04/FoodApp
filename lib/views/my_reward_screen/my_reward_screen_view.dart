import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/reward_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'my_reward_screen_view_model.dart';

class MyRewardScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyRewardScreenViewModel>.reactive(
      builder:
          (BuildContext context, MyRewardScreenViewModel viewModel, Widget _) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "My Las Vegas Number",style: GoogleFonts.montserrat()
              ),
            ),
            body: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/reward.png"),
                        SizedBox(
                          height: ScreenUtil().setHeight(13),
                        ),
                        Text(
                          "My Las Vegas Number",
                          style: GoogleFonts.abel(
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: themecolor),
                            SizedBox(
                              width: ScreenUtil().setWidth(10),
                            ),
                            Text(
                              "Las Vegas",
                              style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: themecolor1,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RewardPoint(point: "3"),
                            RewardPoint(point: "2"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            height: ScreenUtil().setHeight(60),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "79598294345621",
                                style: GoogleFonts.abel(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60),
                          child: GestureDetector(
                            child: Container(
                              height: ScreenUtil().setHeight(50),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FlutterIcons.wallet_faw5s,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(10),
                                    ),
                                    Text(
                                      "Add To Apple Wallet",
                                      style: GoogleFonts.abel(
                                          fontSize: ScreenUtil().setSp(20),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ));
      },
      viewModelBuilder: () => MyRewardScreenViewModel(),
    );
  }
}

