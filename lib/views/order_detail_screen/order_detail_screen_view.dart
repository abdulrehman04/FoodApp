import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'order_detail_screen_view_model.dart';

class OrderDetailScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderDetailScreenViewModel>.reactive(
      builder: (BuildContext context, OrderDetailScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Container(
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
                      SizedBox(height: 20),
                      Text(
                        'Panera Boca Raton - Fedrral Highway',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '1600 North Fedrral Highway, Bocca Raton FL',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        child: Container(
                          height: ScreenUtil().setHeight(25),
                          width: ScreenUtil().setWidth(120),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(30.0),
                                  right: Radius.circular(30.0))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15),
                            child: Center(
                              child: Text(
                                'Directions',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 140.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/orderD.jpg'),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Thank you, Anastasia!',
                        style: GoogleFonts.montserrat(
                            color: themecolor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'When you arrivew tap I’m \n Here and we’ll bring your order to you',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: ScreenUtil().setHeight(95),
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
                                    '1 Items',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    r'$15.75',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
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
                                 SizedBox(
                                   height: ScreenUtil().setHeight(6),
                                 ),
                              Text(
                                'January 2ed - 10:50 PM',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(12),
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 100, right: 100),
                        child: PickUpButton(
                          text: 'I am Here',
                          colour: themecolor,
                          textColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'How was your ordering experiance?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20),
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        unratedColor: Color(0xFFFEEDB1),
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => OrderDetailScreenViewModel(),
    );
  }
}
