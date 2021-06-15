import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'my_subscription_screen_view_model.dart';

class MySubscriptionScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MySubscriptionScreenViewModel>.reactive(
      builder: (BuildContext context, MySubscriptionScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("My Las Vegas Subscription",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w200)),
          ),
          body: Center(
              child: ListView(
                children: [
                  Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(10),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(115),
                    decoration: BoxDecoration(
                      color: Color(0xFF577ECE),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/hi5.png',
                              //alignment: Alignment.bottomRight,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Free Cafe',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(350),
                                height: ScreenUtil().setHeight(5),
                              ),
                              Text(
                                'Gret 2 Amigos to subscribe Las Vegas \n coffe and you will get...',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(350),
                                height: ScreenUtil().setHeight(10),
                              ),
                              GestureDetector(
                                child: Container(
                                  height: ScreenUtil().setHeight(22),
                                  width: ScreenUtil().setWidth(160),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(30.0),
                                          right: Radius.circular(30.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Center(
                                      child: Text(
                                        'Refer A Friend Now',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.ptSans(
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black,
                                            fontSize: 13),
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
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(10),
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Container(
                          width: ScreenUtil().setWidth(350),
                          height: ScreenUtil().setHeight(185),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 50.0,
                              left: 30,
                              right: 30,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'My Las Vegas Cafe',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '#679235456',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                Text(
                                  'Unlimited Cartedito',
                                  style: GoogleFonts.montserrat(
                                      color: themecolor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Subscription Date',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Container(
                                          width: ScreenUtil().setWidth(50),
                                          height: ScreenUtil().setHeight(5),
                                        ),
                                        Text(
                                          '06/20/2020',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    //TODO: Fix vertical divider
                                    VerticalDivider(
                                      color: Colors.white,
                                      thickness: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Subscription Date',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Container(
                                          width: ScreenUtil().setWidth(50),
                                          height: ScreenUtil().setHeight(5),
                                        ),
                                        Text(
                                          '12/21/2020',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: themecolor1,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(70),
                        width: ScreenUtil().setWidth(70),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: themecolor, width: 3),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/profile2.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(10),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Addtional Info about cancelation',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w200),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(30),
                          width: ScreenUtil().setWidth(90),
                          decoration: BoxDecoration(
                              color: themecolor,
                              border: Border.all(color: themecolor),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(200.0),
                                  right: Radius.circular(200.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 5, bottom: 5),
                            child: Center(
                              child: Text('Cancel',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(20),
                    child: Text(
                      'Payment',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(20),
                    child: Text(
                      'Your credit acard on file will be charged',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(10),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    decoration: BoxDecoration(
                        color: themecolor1,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 20, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/cardbg.jpg')),
                              borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Online',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Container(
                                    width: ScreenUtil().setWidth(50),
                                    height: ScreenUtil().setHeight(5),
                                  ),
                                  Text(
                                    'Visa Debit',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 7,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    '**** **** **** 5614',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 7,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Exp: 10/82',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 7,
                                            fontWeight: FontWeight.w200),
                                      ),
                                      Image.asset('assets/visa.png')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                r'($5.46 plus Tax)',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200),
                              ),
                              Text(
                                'Default Card',
                                style: GoogleFonts.montserrat(
                                    color: themecolor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
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
                  ),
                  Container(
                    width: ScreenUtil().setWidth(350),
                    height: ScreenUtil().setHeight(10),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(200),
                    child: PickUpButton(
                      text: '+ Add Payment Method',
                      colour: themecolor,
                      textColor: Colors.black,
                    ),
                  )
            ],
          ),
                ],
              )),
        );
      },
      viewModelBuilder: () => MySubscriptionScreenViewModel(),
    );
  }
}
