import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/center_text_field.dart';
import 'package:FoodApp/widgets/smart_widgets/locate_account_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'locate_account_screen_view_model.dart';

class LocateAccountScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LocateAccountScreenViewModel>.reactive(
      builder: (BuildContext context, LocateAccountScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Locate Account", style: GoogleFonts.montserrat()),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/locateAcc.png',
                        height: ScreenUtil().setHeight(300),
                      ),
                      Text(
                        "Enter Your registered mobile number to locate your account.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(18),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(35),
                      ),
                      FieldWithCenterText(
                        hinttext: 'Phone Number',
                        type: false,
                        hintTextAlignment: TextAlign.center,
                        onchanged: (value) {
                          //phoneNumber = value;
                        },
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(30),
                      ),
                      LocateAccountButton(
                        text: 'Locate Account',
                        onpressed: () {},
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Question? Contact Support.',
                            style: GoogleFonts.montserrat(color: themecolor,fontSize: ScreenUtil().setSp(12),)
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LocateAccountScreenViewModel(),
    );
  }
}

