import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/login_screen/login_screen_view.dart';
import 'package:FoodApp/views/signup_screen/signup_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'welcome_screen_view_model.dart';
          
class WelcomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeScreenViewModel>.reactive(
      builder: (BuildContext context, WelcomeScreenViewModel viewModel, Widget _) {
        return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: ScreenUtil.screenHeight,
              autoPlay: true,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items:viewModel.imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.asset(
                        "assets/slider/" + item,
                        fit: BoxFit.cover,
                        height: ScreenUtil.screenHeight,
                      )),
                    ))
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Image.asset(
                  logo,
                  height: 100,
                ),
                Text(
                  "Food App",
                  style: GoogleFonts.abel(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: ScreenUtil.screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        text: "Register",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignupScreenView();
                          }));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppButton(
                        text: "Login",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginScreenView();
                          }));
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
      },
      viewModelBuilder: () => WelcomeScreenViewModel(context),
    );
  }
}
