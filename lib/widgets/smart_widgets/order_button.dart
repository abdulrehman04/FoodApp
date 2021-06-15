import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key key,
    this.text,
    this.onpressed,
  }) : super(key: key);
  final text;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: ScreenUtil().setWidth(120),
        decoration: BoxDecoration(
            color: themecolor,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(100.0), right: Radius.circular(100.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5,bottom: 5, right: 15),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.ptSans(fontSize: 12),
            ),
          ),
        ),
      ),
      onTap: onpressed,
    );
  }
}