import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'no_account_screen_view_model.dart';

class NoAccountScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NoAccountScreenViewModel>.reactive(
      builder:
          (BuildContext context, NoAccountScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          //appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
            child: Column(
              children: [
                Container(
                  height: ScreenUtil().setHeight(40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: themecolor1),
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF151718),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FlutterIcons.cross_ent,
                          color: Colors.white,
                        ),
                        Text("Help",
                            style: GoogleFonts.montserrat(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.white,
                      size: 160,
                    ),
                    Text(
                      "Hmm...",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: ScreenUtil().setSp(30),),
                    ),
                    Text("Your account coud not located\nat this time.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w300)),
                    Text("Please contact our customer\nsupport team.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(16 ),
                            fontWeight: FontWeight.w300)),
                    Column(
                      children: [
                        Text("Want to do this later?",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w300)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppButton(
                            text: "Order Now",
                            onpressed: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => NoAccountScreenViewModel(),
    );
  }
}
