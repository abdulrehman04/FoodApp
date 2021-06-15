import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutritionalInfo extends StatelessWidget {
  const NutritionalInfo({Key key, this.text1, this.text2}) : super(key: key);
  final text1;
  final text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/dot.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text1,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                text2,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
