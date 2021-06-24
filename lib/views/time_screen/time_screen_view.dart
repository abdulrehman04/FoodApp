import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/Models/Restaurant.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/menu_screen/menu_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/time_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'time_screen_view_model.dart';

class TimeScreenView extends StatefulWidget {
  Restaurant restaurant;
  TimeScreenView(this.restaurant);
  @override
  _TimeScreenViewState createState() => _TimeScreenViewState();
}

class _TimeScreenViewState extends State<TimeScreenView> {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TimeScreenViewModel>.reactive(
      builder: (BuildContext context, TimeScreenViewModel viewModel, Widget _) {
        return Scaffold(
          // bottomNavigationBar: BottomAppBar(),
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Rapid Pickup",style: GoogleFonts.montserrat()
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Delray Beach",
                  style: GoogleFonts.abel(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/pickup.png",
                      height: 180,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Pick-Up Method",
                      style: GoogleFonts.abel(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: ScreenUtil().setHeight(80),
                            width: ScreenUtil().setWidth(350),
                            decoration: BoxDecoration(
                                color: Color(0xFF1f2326),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(10),
                                    right: Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FlutterIcons.box_ent,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Text(
                                  '${currentOrder.selectedMethod}',
                                  style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2. Select Date and time",
                      style: GoogleFonts.abel(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TimeButton(
                          text: "ASAP",
                          color: themecolor,
                          textcolor: Colors.black,
                          onpressed: () {
                            currentOrder.later = false;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MenuScreenView(widget.restaurant);
                            }));
                          },
                        ),
                        TimeButton(
                          text: "Later",
                          color: Color(0xFF1f2326),
                          textcolor: Colors.white,
                          onpressed: () {
                            showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 2))).then((date){
                              showTimePicker(context: context, initialTime: TimeOfDay.now()).then((time){
                                DateTime selectedDate = DateTime(date.year, date.month, date.day, time.hour, time.minute);
                                currentOrder.laterTime = selectedDate;
                                currentOrder.later = true;
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return MenuScreenView(widget.restaurant);
                                    }));
                              });
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: TimeButton(
                        text: "Continue",
                        color: themecolor,
                        textcolor: Colors.black,
                        onpressed: () {

                        },
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => TimeScreenViewModel(),
    );
  }
}


