import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    Key key,
    this.icon,
    this.title,
    this.onpressed,
  }) : super(key: key);
  final icon;
  final title;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: themecolor1,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            icon,
            color: themecolor,
          ),
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.abel(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
      ),
      trailing: Icon(
        Icons.arrow_right_sharp,
        color: themecolor,
      ),
      onTap: onpressed,
    );
  }
}
