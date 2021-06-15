import 'package:FoodApp/theme/css.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard(
      {Key key,
      this.title,
      this.text2,
      this.customized,
      this.onPressed,
      this.itemPic})
      : super(key: key);
  final title;
  final text2;
  final customized;
  final onPressed;
  final itemPic;

  Widget customizedText(customizeddd) {
    if (customizeddd == true) {
      print('ewrfaweg');
      return Text(
        '(Customized)',
        style: GoogleFonts.montserrat(
          color: themecolor,
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      );
    } else {
      print('else');
      return Container(
        height: 0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          //height: ScreenUtil().setHeight(90),
          width: ScreenUtil().setWidth(200),
          decoration: BoxDecoration(
              color: themecolor1,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          customizedText(customized)
                        ],
                      ),
                      Text(
                        text2,
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 120.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/' + itemPic)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
