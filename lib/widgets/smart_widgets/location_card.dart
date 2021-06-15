import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    Key key, this.title, this.subtitle, this.subtitle1, this.check, this.onpressed,
  }) : super(key: key); final title; final subtitle; final subtitle1; final check; final onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
              child: Material(
          borderRadius: BorderRadius.circular(10),
          color: themecolor1,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: GoogleFonts.abel(
                        color: Colors.white, fontSize: ScreenUtil().setSp(19),fontWeight: FontWeight.w600)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(subtitle,
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(14),)),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Icon(FlutterIcons.clock_faw5s,color: Colors.white,size: 35,),
                    )
                  ],
                ),
               (check)?Text(subtitle1,
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(14),)):Container(),
              ],
            ),
          ),
        ),
        onTap: onpressed,
      ),
    );
  }
}
