import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/policy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'terms_of_use_screen_view_model.dart';

class TermsOfUseScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TermsOfUseScreenViewModel>.reactive(
      builder: (BuildContext context, TermsOfUseScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Terms Of Use", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: TextStyle(fontSize: 13.0, color: Colors.white),
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
                              BorderSide(color: Color(0xFF181b1e), width: 32.0),
                          borderRadius: BorderRadius.circular(25.0)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF181b1e), width: 32.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: themecolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/cup.png',
                            height: ScreenUtil().setHeight(50)
                          ),
                          Text('Free coffe all summer. Offer Extended',
                              style: GoogleFonts.montserrat(
                                  fontSize: ScreenUtil().setSp(14),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Text('Last Update Sptember 18th. 2019',
                      style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  PolicyCard(
                    title: 'Use Of Service',
                    radius: 30.0,
                    ontap: () {},
                  ),
                  PolicyCard(
                    title: 'Privacy',
                    radius: 30.0,
                  ),
                  PolicyCard(
                    title: 'Program Terms & Account',
                    radius: 30.0,
                  ),
                  PolicyCard(
                    title: 'The Las Vegas Program',
                    radius: 30.0,
                  ),
                  PolicyCard(
                    title: 'Feedback and Submission',
                    radius: 30.0,
                  ),
                  PolicyCard(
                    title: 'Panera Gallery',
                    radius: 30.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => TermsOfUseScreenViewModel(),
    );
  }
}
