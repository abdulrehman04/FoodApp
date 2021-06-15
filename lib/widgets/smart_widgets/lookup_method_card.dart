import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LookUpMethodCard extends StatelessWidget {
  const LookUpMethodCard({
    Key key,
    this.title,
    this.leadingIcon,
    this.ontap,
  }) : super(key: key);
  final title;
  final leadingIcon;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              color: themecolor1, borderRadius: BorderRadius.circular(15)),
          height: ScreenUtil().setHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/' + leadingIcon),
                    SizedBox(
                      width: ScreenUtil().setWidth(20),
                    ),
                    Text(
                      title,
                      style: GoogleFonts.montserrat(
                        fontSize: ScreenUtil().setSp(14),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/arrow.png',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
