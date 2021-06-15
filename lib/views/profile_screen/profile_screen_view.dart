import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/my_information_screen/my_information_screen_view.dart';
import 'package:FoodApp/views/my_reward_screen/my_reward_screen_view.dart';
import 'package:FoodApp/views/past_orders_screen/past_orders_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/profile_button.dart';
import 'package:FoodApp/widgets/smart_widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'profile_screen_view_model.dart';

class ProfileScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileScreenViewModel>.reactive(
      builder:
          (BuildContext context, ProfileScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Profile & Settings",style: GoogleFonts.montserrat()),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delray Beach",
                    style: GoogleFonts.abel(
                        fontSize: ScreenUtil().setSp(25),
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: ScreenUtil().setHeight(80),
                            width: ScreenUtil().setWidth(80),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: themecolor, width: 2),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/profile.jpeg'),
                              ),
                            ),
                          ),
                          Text(
                            "Anastasia",
                            style: GoogleFonts.abel(
                                fontSize: ScreenUtil().setSp(19),
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: themecolor2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 5, right: 5),
                      child: Column(children: [
                        ProfileCard(
                          icon: Icons.person,
                          title: "My Information",
                          subtitle:
                              "Update your address, Email, Phone\nnumber, etc.",
                          onpressed: () {
                             Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MyInformationScreenView();
                                  }));
                          },
                        ),
                        ProfileCard(
                          icon: Icons.file_copy_outlined,
                          title: "Order History",
                          subtitle: "Revise Your past orders.\n",
                          onpressed: () {
                            Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return PastOrdersScreenView();
                                  }));
                          },
                        ),
                        ProfileCard(
                          icon: Icons.card_membership,
                          title: "Las Vegas Membership",
                          subtitle: "View Membership information.\n",
                          onpressed: () {
                            Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MyRewardScreenView();
                                  }));
                          },
                        ),
                        ProfileCard(
                          icon: Icons.credit_card,
                          title: "Payment Information",
                          subtitle: "Manage Payment Cards.\n",
                          onpressed: () {},
                        ),
                        ProfileCard(
                          icon: FlutterIcons.weight_faw5s,
                          title: "Dietary Preference",
                          subtitle: "Update your Preference.\n",
                          onpressed: () {},
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20)
                  ),
                  Text(
                    "Other Preference",
                    style: GoogleFonts.abel(
                        fontSize: ScreenUtil().setSp(25),
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: themecolor2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 5, right: 5),
                      child: Column(children: [
                        ProfileCard(
                          icon: FlutterIcons.contact_phone_mco,
                          title: "Contact Information",
                          subtitle: "Manage How we should Contact You.\n",
                          onpressed: () {},
                        ),
                        ProfileCard(
                          icon: FlutterIcons.handshake_faw5s,
                          title: "Socializing",
                          subtitle: "Connect your soical accounts.\n",
                          onpressed: () {},
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProfileButton(
                        text: "Our Terms",
                        onpressed: () {},
                      ),
                      ProfileButton(
                        text: "Privacy",
                        onpressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20)
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => ProfileScreenViewModel(),
    );
  }
}
