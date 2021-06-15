import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/order_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard1 extends StatelessWidget {
  const OrderCard1({
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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          color: themecolor1,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 4),
                  child: Text(
                    title,
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.abel(
                    color: themecolor,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + price,
                      style: GoogleFonts.abel(
                        color: Colors.white,
                        fontSize: 20,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
