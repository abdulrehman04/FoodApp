import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/policy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'privacy_policy_screen_view_model.dart';

class PrivacyPolicyScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PrivacyPolicyScreenViewModel>.reactive(
      builder: (BuildContext context, PrivacyPolicyScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Privacy Policy", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(13), color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Color(0xFF181b1e),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search...",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF181b1e), width: ScreenUtil().setWidth(32)),
                          borderRadius: BorderRadius.circular(25.0)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF181b1e), width: ScreenUtil().setHeight(32)),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: themecolor1,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/cup.png',
                            height: 50,
                          ),
                          Text('IIP Free coffe all summer. Offer Extended',
                              style: GoogleFonts.montserrat(
                                  fontSize: ScreenUtil().setSp(12),
                                  color: Colors.white,
                                  )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20)
                  ),
                  Text('Last Update December 31. 2019',
                      style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  PolicyCard(
                    title: 'Scope and Updates',
                    radius: 10.0,
                    ontap: () {},
                  ),
                  PolicyCard(
                    title: 'Information We Collect',
                    radius: 10.0,
                  ),
                  PolicyCard(
                    title: 'Sources Of Our Collection',
                    radius: 10.0,
                  ),
                  PolicyCard(
                    title: 'How we use the information we collect.',
                    radius: 10.0,
                  ),
                  PolicyCard(
                    title: 'How we share information with third parties',
                    radius: 10.0,
                  ),
                  PolicyCard(
                    title: 'Third Party Analytics and Targeted Marketing ',
                    radius: 10.0,
                  ),
                  PolicyCard(
                    title: 'Childrens Privacy',
                    radius: 10.0,
                  ),
                  PolicyCard(
                    title: 'Third-Party Sites/Services',
                    radius: 10.0,
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => PrivacyPolicyScreenViewModel(),
    );
  }
}
