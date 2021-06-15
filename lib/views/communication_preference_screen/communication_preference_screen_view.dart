import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'communication_preference_screen_view_model.dart';

class CommunicationPreferenceScreenView extends StatefulWidget {
  @override
  _CommunicationPreferenceScreenViewState createState() =>
      _CommunicationPreferenceScreenViewState();
}

class _CommunicationPreferenceScreenViewState
    extends State<CommunicationPreferenceScreenView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunicationPreferenceScreenViewModel>.reactive(
      builder: (BuildContext context,
          CommunicationPreferenceScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Communication Preference",
                style: GoogleFonts.montserrat()),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize:  ScreenUtil().setSp(20)),
                          ),
                          Switch(
                            activeColor: themecolor,
                            inactiveThumbColor: themecolor1,
                            inactiveTrackColor: themecolor1,
                            onChanged: (bool value) {
                              setState(() {
                                viewModel.switchvalue = value;
                              });
                            },
                            value: viewModel.switchvalue,
                          ),
                        ],
                      ),
                      Text(
                        "I want to recieve My Las Vegas Email.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize:  ScreenUtil().setSp(13)),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Text(
                        "Get email exclusive, such as Bonus Rewards, Special Offers\nSneak Peaks, Menu Updates and more.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize:  ScreenUtil().setSp(13)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Push Notification",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize:  ScreenUtil().setSp(20)),
                          ),
                          Switch(
                            activeColor: themecolor,
                            inactiveThumbColor: themecolor1,
                            inactiveTrackColor: themecolor1,
                            onChanged: (bool value) {
                              setState(() {
                                viewModel.switchvalue1 = value;
                              });
                            },
                            value: viewModel.switchvalue1,
                          ),
                        ],
                      ),
                      Text(
                        "I want to recieve Push Notification.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize:  ScreenUtil().setSp(13)),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Text(
                        "Get email exclusive special offers, Menu and app updates\nand more.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize:  ScreenUtil().setSp(13)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => CommunicationPreferenceScreenViewModel(),
    );
  }
}
