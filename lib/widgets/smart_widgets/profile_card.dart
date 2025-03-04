import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
    this.icon,
    this.title,
    this.subtitle,
    this.onpressed,
  }) : super(key: key);
  final icon;
  final title;
  final subtitle;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: themecolor1, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              icon,
              color: themecolor,
            ),
            title: Text(
              title,
              style: GoogleFonts.abel(color: Colors.white),
            ),
            subtitle: Text(
              subtitle,
              style: GoogleFonts.abel(color: Colors.white, fontSize: 11),
            ),
            onTap: onpressed,
          ),
        ),
      ),
    );
  }
}
