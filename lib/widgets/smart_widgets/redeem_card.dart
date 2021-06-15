import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RedeemCard extends StatelessWidget {
  const RedeemCard({
    Key key, this.price, this.text, this.onpressed,
  }) : super(key: key); final price; final text; final onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: ScreenUtil().setHeight(120),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 10.0, right: 20.0, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$ "+price,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w800, fontSize: ScreenUtil().setSp(14)),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400, fontSize: ScreenUtil().setSp(10)),
              ),
              GestureDetector(
                child: Container(
                  height: ScreenUtil().setHeight(20),
                  width: ScreenUtil().setWidth(50),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20.0),
                          right: Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Center(
                      child: Text(
                        "Redeem",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ptSans(
                            color: themecolor,
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenUtil().setSp(9)),
                      ),
                    ),
                  ),
                ),
                onTap: onpressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
