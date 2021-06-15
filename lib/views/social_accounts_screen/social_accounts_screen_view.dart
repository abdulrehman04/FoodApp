import 'package:FoodApp/widgets/smart_widgets/social_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'social_accounts_screen_view_model.dart';

class SocialAccountsScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SocialAccountsScreenViewModel>.reactive(
      builder: (BuildContext context, SocialAccountsScreenViewModel viewModel,
          Widget _) {
        return
            // Stack(
            //   children: <Widget>[
            //     Positioned.fill(
            //       child: Image.asset(
            //         "assets/pns2.png",
            //         fit: BoxFit.fitWidth,
            //         alignment: Alignment.bottomLeft,
            //       ),
            //     ),
            //     Center(
            //       child: Text("App content would be here"),
            //     )
            //   ],
            // );
            Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title:
                      Text("Social Accounts", style: GoogleFonts.montserrat()),
                ),
                body: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        "assets/pns2.png",
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            Image.asset('assets/mask2.png'),
                            SizedBox(
                              height: ScreenUtil().setHeight(30)
                            ),
                            Flexible(
                                child: Text(
                              'You can use below social media to connect with your account.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16),
                                  ),
                            )),
                            SizedBox(
                              height: ScreenUtil().setHeight(30)
                            ),
                            SocialButton(
                              text: 'Connect with Apple Id',
                              colour: Color(0xFF353535),
                              leadingIcon: FontAwesome.apple,
                              textColour: Colors.white,
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(30)
                            ),
                            SocialButton(
                              text: 'Connect with Facebook',
                              colour: Color(0xFF475993),
                              leadingIcon: FontAwesome.facebook_official,
                              textColour: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ));
      },
      viewModelBuilder: () => SocialAccountsScreenViewModel(),
    );
  }
}
