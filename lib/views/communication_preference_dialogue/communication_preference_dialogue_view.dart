import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'communication_preference_dialogue_view_model.dart';

class CommunicationPreferenceDialogueView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunicationPreferenceDialogueViewModel>.reactive(
      builder: (BuildContext context,
          CommunicationPreferenceDialogueViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text("Communication Preference",
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w200))),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 15,bottom: 20),
              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          // width: ScreenUtil().setWidth(350),
                          // height: ScreenUtil().setHeight(200),
                          child: Image.asset('assets/lock.png')),
                      Container(
                        width: ScreenUtil().setWidth(350),
                        height: ScreenUtil().setHeight(10),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Please Enter your password to edit this page information.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(13),
                              color: Colors.white),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              FlutterIcons.eye_ent,
                              color: Colors.white,
                            ),
                            fillColor: themecolor1,
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: ScreenUtil().setWidth(32)),
                                borderRadius: BorderRadius.circular(15.0)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: ScreenUtil().setWidth(15)),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: ScreenUtil().setWidth(320),
                          //height: ScreenUtil().setHeight(30),
                          child: Text(
                            'Forgot Password?',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(14),
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Container(
                          width: ScreenUtil().setWidth(200),
                          child: PickUpButton(
                            text: 'Continue',
                            colour: themecolor,
                            textColor: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: themecolor1,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/cpbg.png')))),
            ),
          ),
        );
      },
      viewModelBuilder: () => CommunicationPreferenceDialogueViewModel(),
    );
  }
}
