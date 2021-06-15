import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/order_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key key,
    this.date,
    this.title,
    this.subtitle,
    this.price,
    this.onpressed,
  }) : super(key: key);
  final date;
  final title;
  final subtitle;
  final price;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: GoogleFonts.abel(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 4),
            child: Text(
              title,
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(20),
              ),
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.abel(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$" + price,
                style: GoogleFonts.abel(
                  color: themecolor,
                  fontSize: ScreenUtil().setSp(14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OrderButton(
                  text: "View Order",
                  onpressed: onpressed,
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
