import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TastePreferenceCard extends StatefulWidget {
  TastePreferenceCard(
      {Key key, this.title, this.leadingIcon, this.ontap, this.checked})
      : super(key: key);
  final title;
  final leadingIcon;
  var checked;
  final ontap;

  @override
  _TastePreferenceCardState createState() => _TastePreferenceCardState();
}

class _TastePreferenceCardState extends State<TastePreferenceCard> {
  void setChecked() {
    setState(() {
      widget.checked = (widget.checked) ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          setChecked();
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF1E2326),
              borderRadius: BorderRadius.circular(40)),
          height: ScreenUtil().setHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/' + widget.leadingIcon),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.title,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/' +
                      ((widget.checked) ? 'greenCheck.png' : 'greyCheck.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
