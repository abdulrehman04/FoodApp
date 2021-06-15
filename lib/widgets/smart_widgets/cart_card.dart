import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key key,
    this.path,
    this.title,
    this.subtitle,
    this.addtap,
    this.minustap,
    this.removetap,
    this.type,
    this.price, this.quantity,
  }) : super(key: key);
  final path;
  final title;
  final subtitle;
  final addtap;
  final minustap;
  final removetap;
  final type;
  final price;
  final quantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Center(
                    child: Image.network(
                      path,
                      height: ScreenUtil().setHeight(40),
                      width: ScreenUtil().setWidth(40),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        Text(
                         subtitle,
                          style: GoogleFonts.montserrat(
                              color: themecolor,
                              fontWeight: FontWeight.w300,
                              fontSize: ScreenUtil().setSp(11)),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(5),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.white,
                              ),
                              onTap: addtap
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0),
                              child: Text(
                                quantity,
                                style: GoogleFonts.montserrat(
                                    color: themecolor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: ScreenUtil().setSp(11)),
                              ),
                            ),
                            GestureDetector(
                              child: Icon(
                                Icons.remove_circle,
                                color: Colors.white,
                              ),
                              onTap: minustap
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(5),
                            ),
                            GestureDetector(
                              child: Container(
                                height: ScreenUtil().setHeight(20),
                                width: ScreenUtil().setWidth(50),
                                decoration: BoxDecoration(
                                    color: themecolor1,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(20.0),
                                        right: Radius.circular(20.0))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Center(
                                    child: Text(
                                      "Remove",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.ptSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: ScreenUtil().setSp(9)),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: removetap,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    type,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "\$ "+price,
                    style: GoogleFonts.montserrat(
                        color: themecolor,
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(11)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}