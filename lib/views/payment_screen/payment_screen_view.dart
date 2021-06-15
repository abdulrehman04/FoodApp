import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:FoodApp/widgets/smart_widgets/pay_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'payment_screen_view_model.dart';

class PaymentScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentScreenViewModel>.reactive(
      builder:
          (BuildContext context, PaymentScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Payment", style: GoogleFonts.montserrat()),
          ),
          body: SingleChildScrollView(
                      child: Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 26, right: 26, top: 40),
              child: Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.all(80.0),
                      decoration: BoxDecoration(
                        color: themecolor1,
                        //borderRadius: BorderRadius.circular(100),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(44.0),
                        child: Text(
                          "\$ 3.21",
                          style: GoogleFonts.montserrat(
                              color: themecolor, fontSize: ScreenUtil().setSp(35)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Text(
                      'Payment',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(45),
                    ),
                    //First card
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: themecolor1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contact',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: themecolor,
                                      fontSize: ScreenUtil().setSp(12),
                                    ),
                                  ),
                                  Text(
                                    'Anastasia',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(15),
                                    ),
                                  ),
                                  Text(
                                    'Anastasia@gmail.com',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(13),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset('assets/arrow.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    //Second card
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: themecolor1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Instruction',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: themecolor,
                                      fontSize: ScreenUtil().setSp(12),
                                    ),
                                  ),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of...',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(15),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset('assets/arrow.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    //Third  card
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: themecolor1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Summary',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: themecolor,
                                      fontSize: ScreenUtil().setSp(12),
                                    ),
                                  ),
                                  Text(
                                    'Total',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(15),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 3.21',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    PayButton(
                      text: 'Pay',
                      onpressed: () {},
                    )
                  ],
                ),
              ),
            )),
          ),
        );
      },
      viewModelBuilder: () => PaymentScreenViewModel(),
    );
  }
}
