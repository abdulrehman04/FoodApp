import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'gift_card_screen_view_model.dart';

class GiftCardScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GiftCardScreenViewModel>.reactive(
      builder:
          (BuildContext context, GiftCardScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Add Gift Card", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/gift.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF171B1E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text(
                            'This reward does not apply',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenUtil().setSp(15)),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(25)),
                          Text(
                            'Please adjust order to use this reward.',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: ScreenUtil().setSp(15)),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(50)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Container(
                                  //height: ScreenUtil().setHeight(25),
                                  width: ScreenUtil().setWidth(130),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(100.0),
                                          right: Radius.circular(100.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10,
                                        top: 6,
                                        bottom: 6),
                                    child: Center(
                                      child: Text(
                                        'Adjust Order',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.ptSans(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                              GestureDetector(
                                child: Container(
                                  width: ScreenUtil().setWidth(130),
                                  decoration: BoxDecoration(
                                      color: themecolor,
                                      borderRadius: BorderRadius.horizontal(
                                         left: Radius.circular(100.0),
                                          right: Radius.circular(100.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10,
                                        top: 6,
                                        bottom: 6),
                                    child: Center(
                                      child: Text(
                                        'No, Thanks',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.ptSans(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => GiftCardScreenViewModel(),
    );
  }
}
