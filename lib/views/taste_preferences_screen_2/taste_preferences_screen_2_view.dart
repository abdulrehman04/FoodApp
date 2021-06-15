import 'package:FoodApp/theme/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'taste_preferences_screen_2_view_model.dart';

class TastePreferencesScreen2View extends StatefulWidget {
  @override
  _TastePreferencesScreen2ViewState createState() => _TastePreferencesScreen2ViewState();
}

class _TastePreferencesScreen2ViewState extends State<TastePreferencesScreen2View> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TastePreferencesScreen2ViewModel>.reactive(
      builder: (BuildContext context,
          TastePreferencesScreen2ViewModel viewModel, Widget _) {
        final List<String> _dropdownValues = [
          "Regular",
          "Large",
        ];
        var val = "Large";
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Taste Preferences", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Text(
                    'Would you like to add a drink?',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(18),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  GestureDetector(
                    child: Container(
                      width: ScreenUtil().setWidth(120),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30.0),
                              right: Radius.circular(30.0))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15, top: 5, bottom: 5),
                        child: Center(
                          child: Text(
                            'No, Thanks',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: ScreenUtil().setSp(14)),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: themecolor1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: ScreenUtil().setHeight(70),
                            width: ScreenUtil().setWidth(70),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/juice.png'),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Juice - customize to',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(15),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(5),
                              ),
                              Text(
                                'Choose your flavour',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(13),
                                    fontWeight: FontWeight.w200),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(5),
                              ),
                              Text(
                                r'$ 1.70 - 220 Cal per 20 fl Oz',
                                style: GoogleFonts.montserrat(
                                    color: themecolor,
                                    fontSize: ScreenUtil().setSp(12),
                                    fontWeight: FontWeight.w400),
                              ),
                               SizedBox(
                                height: ScreenUtil().setHeight(5),
                              ),
                              Container(
                                height: ScreenUtil().setHeight(25),
                                width: ScreenUtil().setWidth(90),
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
                                    iconDisabledColor: themecolor,
                                    iconEnabledColor: themecolor,
                                    dropdownColor: Colors.black,
                                    items: _dropdownValues
                                        .map((value) => DropdownMenuItem(
                                              child: Text(
                                                val,
                                                style: GoogleFonts.montserrat(
                                                    color: themecolor,
                                                    fontSize: 11),
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
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                  child: Text(
                                    'Add',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(13),
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => TastePreferencesScreen2ViewModel(),
    );
  }
}
