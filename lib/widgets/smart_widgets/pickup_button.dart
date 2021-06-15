import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PickUpButton extends StatelessWidget {
  const PickUpButton({
    Key key,
    this.text,
    this.colour,
    this.textColor,
    this.onpressed,
  }) : super(key: key);
  final text;
  final colour;
  final textColor;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          // height: ScreenUtil().setHeight(40),
          //width: ScreenUtil().setWidth(110),
          decoration: BoxDecoration(
              color: colour,
              border: Border.all(color: themecolor),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(200.0), right: Radius.circular(200.0))),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15, top: 10, bottom: 10),
            child: Center(
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w500, color: textColor)),
            ),
          ),
        ),
      ),
      onTap: onpressed,
    );
  }
}
