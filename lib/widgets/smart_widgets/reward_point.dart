import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardPoint extends StatelessWidget {
  const RewardPoint({
    Key key,
    this.point,
  }) : super(key: key);
  final point;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          point,
          style: GoogleFonts.montserrat(
              color: themecolor, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Rewards\nAvailable",
          textAlign: TextAlign.center,
          style: GoogleFonts.abel(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
