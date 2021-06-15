import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/login_screen/login_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:FoodApp/widgets/smart_widgets/field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
import 'package:stacked/stacked.dart';
import 'signup_screen_view_model.dart';
          
class SignupScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupScreenViewModel>.reactive(
      builder: (BuildContext context, SignupScreenViewModel viewModel, Widget _) {
        return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/slider/food1.jpg",
                ),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                      child: Image.asset(
                    logo,
                    height: ScreenUtil().setHeight(120),
                  )),
                ),
                SizedBox(
                  height:ScreenUtil().setHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      Text(
                        "Register",
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(40)),
                      ),
                    ],
                  ),
                ),
                Field(
                  hinttext: 'UserName',
                  type: false,
                  onchanged: (value) {
                    //username = value;
                  },
                ),
                Field(
                  hinttext: 'Email',
                  type: false,
                  onchanged: (value) {
                    //email = value;
                  },
                ),
                Field(
                  hinttext: 'Password',
                  type: true,
                  onchanged: (value) {
                    //password = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                AppButton(
                  text: "Register",
                  onpressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LoginScreenView();
                    }));
                  },
                ),
                SizedBox(
                  height:ScreenUtil().setHeight(20),
                ),
                Text('Or SignUp With',
                    style: GoogleFonts.abel(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton.mini(
                      buttonType: ButtonType.google,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.twitter,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
      },
      viewModelBuilder: () => SignupScreenViewModel(),
    );
  }
}
