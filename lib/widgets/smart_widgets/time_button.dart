import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeButton extends StatelessWidget {
  const TimeButton({
    Key key,
    this.text,
    this.onpressed,
    this.color,
    this.textcolor,
  }) : super(key: key);
  final text;
  final onpressed;
  final color;
  final textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: ScreenUtil().setWidth(160),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20.0), right: Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10,bottom: 10, right: 15),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.w500, color: textcolor),
            ),
          ),
        ),
      ),
      onTap: onpressed,
    );
  }
}