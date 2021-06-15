import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PolicyCard extends StatelessWidget {
  const PolicyCard({Key key, this.title, this.ontap, this.radius})
      : super(key: key);
  final title;
  final ontap;
  final radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: Container(
          decoration: BoxDecoration(
              color: themecolor1, borderRadius: BorderRadius.circular(radius)),
          //height: ScreenUtil().setHeight(50),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:3.0),
                    child: GestureDetector(
                      onTap: ontap,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.add,
                            color: themecolor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
