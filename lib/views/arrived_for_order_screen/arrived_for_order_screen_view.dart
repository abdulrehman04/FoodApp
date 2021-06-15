import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'arrived_for_order_screen_view_model.dart';

class ArrivedForOrderScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ArrivedForOrderScreenViewModel>.reactive(
      builder: (BuildContext context, ArrivedForOrderScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Container(
              width: ScreenUtil().setWidth(450),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        TextField(
                          controller: TextEditingController()
                            ..text = 'Order #8889984884',
                          onChanged: (text) => {},
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                          decoration: InputDecoration(
                            fillColor: Color(0xFF181b1e),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding:
                                EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            prefixIcon: Icon(
                              FontAwesome.times,
                              size: 20,
                              color: Colors.white,
                            ),
                            hintText: "Search",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF181b1e), width: 32.0),
                                borderRadius: BorderRadius.circular(25.0)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF181b1e), width: 32.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(20)
                        ),
                        Container(
                          height: ScreenUtil().setHeight(120),
                          width: ScreenUtil().setWidth(350),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Las Vegas Calla Ocho',
                                  style: GoogleFonts.montserrat(
                                      fontSize: ScreenUtil().setSp(18),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                Text(
                                  '123 sw, 8th street, Miami, FL',
                                  style: GoogleFonts.montserrat(
                                      fontSize: ScreenUtil().setSp(16),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: ScreenUtil().setHeight(25),
                                    width: ScreenUtil().setWidth(120),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(30.0),
                                            right: Radius.circular(30.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15),
                                      child: Center(
                                        child: Text(
                                          'Directions',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.ptSans(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: ScreenUtil().setSp(14),),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(50),
                        ),
                        Image.asset('assets/shoppingbags.png'),
                        SizedBox(
                          height: ScreenUtil().setHeight(30),
                        ),
                        Text(
                          'Gracias, Anastasia! Please tap on \n “Arrived” and one of our \n associates will bring your order to you.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: ScreenUtil().setSp(16),
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(30),
                        ),
                        Container(
                          //height: ScreenUtil().setHeight(70),
                          width: ScreenUtil().setWidth(350),
                          decoration: BoxDecoration(
                            color: themecolor1,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4 Items',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(16),
                                          ),
                                    ),
                                    Text(
                                      r'$15.75',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(16),
                                          ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Pick-Up',
                                  style: GoogleFonts.montserrat(
                                      color: themecolor,
                                      fontSize: ScreenUtil().setSp(12),
                                      fontWeight: FontWeight.w200),
                                ),
                                Text(
                                  'January 2ed - 10:50 PM',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(30),),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, right: 100),
                          child: PickUpButton(
                            text: 'Arrived',
                            colour: themecolor,
                            textColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Las Vegas Drive for Happiness',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Support those less fortunate',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => ArrivedForOrderScreenViewModel(),
    );
  }
}
