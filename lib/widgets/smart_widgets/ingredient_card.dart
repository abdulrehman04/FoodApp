import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientCard extends StatefulWidget {
  const IngredientCard({
    Key key,
    this.title,
    this.onpressed,
    this.image,
  }) : super(key: key);
  final title;
  final image;
  final onpressed;

  @override
  _IngredientCardState createState() => _IngredientCardState();
}

class _IngredientCardState extends State<IngredientCard> {
  final List<String> _dropdownValues = [
    "Regular",
    "Light",
  ];
  var val = "Regular";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Center(
                    child: Image.asset(
                      widget.image,
                      height: ScreenUtil().setHeight(60),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(30),
                        width: ScreenUtil().setWidth(100),
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                              color: themecolor,
                              style: BorderStyle.solid,
                              width: 1),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            iconDisabledColor: Colors.white,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.black,
                            items: _dropdownValues
                                .map((value) => DropdownMenuItem(
                                      child: Text(
                                        val,
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                      value: value,
                                    ))
                                .toList(),
                            onChanged: (String value) {
                              setState(() {
                                val = value;
                              });
                            },
                            isExpanded: false,
                            value: _dropdownValues.first,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: themecolor, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      FlutterIcons.cross_ent,
                      color: themecolor,
                      size: 15,
                    ),
                  ),
                ),
                onTap: widget.onpressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
