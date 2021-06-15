import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {Key key,
      this.text,
      this.onpressed,
      this.colour,
      this.leadingIcon,
      this.textColour})
      : super(key: key);
  final text;
  final onpressed;
  final colour;
  final leadingIcon;
  final textColour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        //height: ScreenUtil().setHeight(40),
        // width: ScreenUtil().setWidth(200),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(100.0), right: Radius.circular(100.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15,top: 10,bottom: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  leadingIcon,
                  color: Colors.white,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(30)
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w500,
                      color: textColour,
                      fontSize: ScreenUtil().setSp(17)),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: onpressed,
    );
  }
}
