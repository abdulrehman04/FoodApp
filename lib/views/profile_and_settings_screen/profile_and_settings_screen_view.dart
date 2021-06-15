import 'package:FoodApp/widgets/smart_widgets/pay_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'profile_and_settings_screen_view_model.dart';

class ProfileAndSettingsScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileAndSettingsScreenViewModel>.reactive(
      builder: (BuildContext context,
          ProfileAndSettingsScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title:
                Text("Profile and Settings", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    //height: ScreenUtil().setHeight(100),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/pns1.png'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              'Nothing beats A Las Vegas membership, except maybe our rewards...',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(20),
                          ),
                          Flexible(
                            child: Text(
                              'As a Las Vegas member, You’ll get rewards for purchases!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(30)),
                          PayButton(
                            text: 'Join Now',
                            onpressed: () {},
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(14),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already a member?',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text('Sign In',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/pns2.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => ProfileAndSettingsScreenViewModel(),
    );
  }
}
