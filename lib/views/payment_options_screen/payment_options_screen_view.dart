import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'payment_options_screen_view_model.dart';

class PaymentOptionsScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentOptionsScreenViewModel>.reactive(
      builder: (BuildContext context, PaymentOptionsScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: ScreenUtil().setWidth(450),
                child: ListView(
                  children: [
                    TextField(
                      controller: TextEditingController()..text = 'Pay',
                      onChanged: (text) => {},
                      style: TextStyle(fontSize: 13.0, color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Color(0xFF151718),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        prefixIcon: Icon(
                          FontAwesome.times,
                          size: 20,
                          color: Colors.white,
                        ),
                        hintText: "Search",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF1E2326), width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF181b1e), width: 32.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(270),
                            height: ScreenUtil().setHeight(150),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/cardbg.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Online',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(18),
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Visa Debit',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(12),
                                            fontWeight: FontWeight.w200),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, bottom: 8.0),
                                        child: Text(
                                          '**** **** **** 5614',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: ScreenUtil().setSp(16),
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Exp: 10/82',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize:
                                                    ScreenUtil().setSp(12),
                                                fontWeight: FontWeight.w200),
                                          ),
                                          Image.asset('assets/visa.png')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/ring.png'),
                              Image.asset('assets/ringfill.png')
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(270),
                            height: ScreenUtil().setHeight(150),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/cardbg.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(12),
                                            fontWeight: FontWeight.w200),
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(5),
                                      ),
                                      Text(
                                        'anstasia@gmail.com',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      'assets/email2.png',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/ring.png'),
                              //Image.asset('assets/ringfill.png')
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(270),
                            height: ScreenUtil().setHeight(150),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/cardbg.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Address',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(12),
                                            fontWeight: FontWeight.w200),
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(5),
                                      ),
                                      Text(
                                        'Lurs Temple 1123L450',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset('assets/house.png'))
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/ring.png'),
                              //Image.asset('assets/ringfill.png')
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 100, right: 100),
                      child: Container(
                        width: ScreenUtil().setWidth(40),
                        child: PickUpButton(
                          text: 'Continue',
                          colour: themecolor,
                          textColor: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => PaymentOptionsScreenViewModel(),
    );
  }
}
