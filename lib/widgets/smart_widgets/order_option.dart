import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewOrderOption extends StatelessWidget {
  const NewOrderOption({
    Key key,
    this.leading,
    this.text,
    this.image,
    this.onpressed,
  }) : super(key: key);
  final leading;
  final text;
  final image;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: ScreenUtil().setHeight(80),
              width: ScreenUtil().setWidth(350),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10), right: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    leading,
                    style: GoogleFonts.abel(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    text,
                    style: GoogleFonts.abel(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    image,
                    height: 50,
                  )
                ],
              )),
        ),
      ),
      onTap: onpressed,
    );
  }
}