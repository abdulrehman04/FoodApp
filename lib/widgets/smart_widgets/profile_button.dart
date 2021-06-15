

import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
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
        
        width: ScreenUtil().setWidth(160),
        decoration: BoxDecoration(
            border: Border.all(color: themecolor),
            color: Colors.black,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(100.0), right: Radius.circular(100.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15,top: 10,bottom: 10),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.bold, color: themecolor),
            ),
          ),
        ),
      ),
      onTap: onpressed,
    );
  }
}