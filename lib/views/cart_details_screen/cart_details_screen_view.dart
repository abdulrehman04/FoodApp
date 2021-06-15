import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'cart_details_screen_view_model.dart';

class CartDetailsScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartDetailsScreenViewModel>.reactive(
      builder: (BuildContext context, CartDetailsScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Cart", style: GoogleFonts.montserrat()),
          ),
          body: Container(
            width: ScreenUtil().setWidth(450),
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                  child: Container(
                    width: ScreenUtil().setWidth(450),
                    child: Row(
                      children: [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/hand.png')),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Rapid Puck-up',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        GestureDetector(
                          child: Container(
                            // height: ScreenUtil().setHeight(40),
                            //width: ScreenUtil().setWidth(110),
                            decoration: BoxDecoration(
                                color: themecolor,
                                border: Border.all(color: themecolor),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(200.0),
                                    right: Radius.circular(200.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15, top: 10, bottom: 10),
                              child: Center(
                                child: Text('Change',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ptSans(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ),
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: themecolor1,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your Order',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 20,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Order More',
                                style: GoogleFonts.montserrat(
                                  color: themecolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: ScreenUtil().setWidth(350),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/girl.png'),
                              Text(
                                'Still Hungry?',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Let’s Find Something Delicious!',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 120, right: 120, bottom: 20),
                        child: PickUpButton(
                          text: 'Start Order',
                          colour: themecolor,
                          textColor: Colors.black,
                        ),
                      ),
                      Container(
                        width: ScreenUtil().setWidth(450),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price Details',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subtotal',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    r'$ 0.00',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rewards',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    r'$ 0.00',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Taxes',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    r'$ 0.00',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Apply Coupon',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100.0, right: 100),
                                child: PickUpButton(
                                  text: 'Checkout',
                                  colour: themecolor,
                                  textColor: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => CartDetailsScreenViewModel(),
    );
  }
}
