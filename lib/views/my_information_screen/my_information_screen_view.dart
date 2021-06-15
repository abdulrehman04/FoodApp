import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'my_information_screen_view_model.dart';

class MyInformationScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyInformationScreenViewModel>.reactive(
      builder: (BuildContext context, MyInformationScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "My Information",style: GoogleFonts.montserrat()
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(70),
                        width: ScreenUtil().setWidth(70),
                        decoration: BoxDecoration(       
                          shape: BoxShape.circle,
                          border: Border.all(color: themecolor, width: 2),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/profile.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anastasia Belinksi",
                            style: GoogleFonts.abel(
                                fontSize: ScreenUtil().setSp(23),
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "anastasiabel@gmail.com",
                            style: GoogleFonts.abel(
                                fontSize: ScreenUtil().setSp(14),
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.cake,
                                color: Colors.white,
                                size: 17,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "3rd Dec",
                                  style: GoogleFonts.abel(
                                      fontSize: ScreenUtil().setSp(16),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: ListView(
                      children: [
                        InfoCard(
                          title: "Contact Info",
                          icon: Icons.add_circle,
                          subtitle: "Home",
                          info: "(514)-543-1235",
                          onpressed: () {},
                        ),
                        InfoCard(
                          title: "Address",
                          icon: Icons.add_circle,
                          subtitle: "Home",
                          info: "1333 Del Developer Road\nBeach Home, FL",
                          onpressed: () {},
                        ),
                        InfoCard(
                          title: "Order Instruction",
                          icon: FlutterIcons.pencil_circle_mco,
                          subtitle: "Default",
                          info: "No message plz.",
                          onpressed: () {},
                        ),
                        InfoCard(
                          title: "Password",
                          icon: FlutterIcons.pencil_circle_mco,
                          subtitle: "",
                          info: "***********",
                          onpressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => MyInformationScreenViewModel(),
    );
  }
}
