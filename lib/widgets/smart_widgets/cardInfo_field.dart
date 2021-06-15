import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardField extends StatelessWidget {
  const CardField({
    Key key,
    this.hinttext,
    this.onchanged,
    this.type,
    this.registerFormKey,
    this.width,
  }) : super(key: key);

  final hinttext;
  final type;
  final onchanged;
  final registerFormKey;
  final width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: themecolor1,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 50,
            child: Center(
              child: TextFormField(
                maxLines: 1,
                obscureText: type,
                textAlign: TextAlign.start,
                onChanged: onchanged,
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
                cursorColor: Color(0xFF4FBE9F),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: hinttext,
                  hintStyle: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
