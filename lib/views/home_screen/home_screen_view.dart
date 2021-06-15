import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/Models/Order.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/time_screen/time_screen_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'home_screen_view_model.dart';

class HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      builder: (BuildContext context, HomeScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              Row(
                children: [
                  Text(
                    "3 Rewards Available",
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10)),
                  Icon(
                    FlutterIcons.medal_faw5s,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(5),),
                ],
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.4,
                      enlargeCenterPage: true,
                    ),
                    items: viewModel.imgList
                        .map((item) => Center(
                                child: Container(
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                shadowColor: Colors.black38,
                                elevation: 9.0,
                                clipBehavior: Clip.antiAlias,
                                child: PageView(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/" + item,
                                      fit: BoxFit.cover,
                                    )
                                  ],
                                ),
                              ),
                            )))
                        .toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Container(
                          height: ScreenUtil().setHeight(235),
                          width: ScreenUtil().setWidth(350),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Container(
                                height: ScreenUtil().setHeight(200),
                                width: ScreenUtil().setWidth(350),
                                decoration: BoxDecoration(
                                    color: Color(0xFF1f2326),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "It's CENA time",
                                      style: GoogleFonts.abel(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(25),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(20),
                                    ),
                                    Text(
                                      "Have a hint of deliciousness",
                                      style: GoogleFonts.abel(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(12),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Ropa Vieja Cubana",
                                      style: GoogleFonts.abel(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(18),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/mask.png",
                          height: ScreenUtil().setHeight(60),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: ScreenUtil().setWidth(150),
                            decoration: BoxDecoration(
                                color: themecolor,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(100.0),
                                    right: Radius.circular(100.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15, top: 10, bottom: 10),
                              child: Center(
                                child: Text(
                                  "NewOrder",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          onTap: () async {
                            currentOrder = Order();
                            getNearbyRestaurants();
                            if((await Geolocator().isLocationServiceEnabled())){
                              viewModel.showDialog(context);
                            }
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            width: ScreenUtil().setWidth(150),
                            decoration: BoxDecoration(
                                color: themecolor,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(20.0),
                                    right: Radius.circular(20.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15, top: 10, bottom: 10),
                              child: Center(
                                child: Text(
                                  "Reorder",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          onTap: () async {
                            currentOrder = Order();
                            getNearbyRestaurants();
                            if((await Geolocator().isLocationServiceEnabled())){
                              viewModel.showDialog(context);
                            }
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeScreenViewModel(),
    );
  }
}
