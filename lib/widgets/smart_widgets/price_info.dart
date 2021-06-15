import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceInfo extends StatelessWidget {
  const PriceInfo({
    Key key,
    this.text,
    this.price,
  }) : super(key: key);
  final text;
  final price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
                color: Colors.white, fontSize:  ScreenUtil().setSp(14), fontWeight: FontWeight.w300),
          ),
          Text(
            "\$ " + price,
            style: GoogleFonts.montserrat(
                color: Colors.white, fontSize:  ScreenUtil().setSp(14), fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}