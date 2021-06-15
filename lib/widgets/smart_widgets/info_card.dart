import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key key,
    this.title,
    this.icon,
    this.onpressed,
    this.subtitle,
    this.info,
  }) : super(key: key);
  final title;
  final icon;
  final onpressed;
  final subtitle;
  final info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: themecolor1, borderRadius: BorderRadius.circular(15)),
        height: ScreenUtil().setHeight(120),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.abel(
                        fontSize: ScreenUtil().setSp(16),
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    child: Icon(
                      icon,
                      color: themecolor,
                      size: 25,
                    ),
                    onTap: onpressed,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle,
                    style: GoogleFonts.abel(
                        fontSize: ScreenUtil().setSp(16),
                        color: themecolor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    info,
                    style: GoogleFonts.abel(
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
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
