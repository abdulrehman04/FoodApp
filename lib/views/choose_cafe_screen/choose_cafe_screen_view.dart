import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/core/Services/Utility.dart';
import 'package:FoodApp/views/time_screen/time_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/location_card.dart';
import 'package:FoodApp/widgets/smart_widgets/order_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong/latlong.dart';
import 'package:stacked/stacked.dart';
import 'choose_cafe_screen_view_model.dart';

class ChooseCafeScreenView extends StatelessWidget {
  final List restaurants;
  ChooseCafeScreenView(this.restaurants);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChooseCafeScreenViewModel>.reactive(
      builder: (BuildContext context, ChooseCafeScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Rapid Pickup",style: GoogleFonts.montserrat()),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose a Cafe",
                    style: GoogleFonts.abel(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize:  ScreenUtil().setSp(25))),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                TextField(
                  style: TextStyle(fontSize:  ScreenUtil().setSp(13), color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: Color(0xFF181b1e),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search for and address, city or zip",
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFF181b1e), width:  ScreenUtil().setWidth(32)),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFF181b1e), width:  ScreenUtil().setWidth(32)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nearby",
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize:  ScreenUtil().setSp(18))),
                    OrderButton(
                      text: "Show Map",
                      onpressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Expanded(
                  child: restaurants.length==0?Container(child: Center(child: Text('No Restaurants for selected option in your area', style: GoogleFonts.abel(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize:  ScreenUtil().setSp(18)),),),):ListView(
                    children: [
                      Column(
                        children: restaurants.map<Widget>((e){
                          return LocationCard(
                            title: e.name,
                            subtitle: "${Utility.getDistance(e.lat, e.lng)} mi - ${e.address}",
                            check: false,
                            onpressed: () {
                              currentOrder.restaurantId = e.id;
                              currentOrder.selectedRestaurant = e;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TimeScreenView(e)));
                            },
                          );
                        }).toList(),
//                        children: [
//                          LocationCard(
//                            title: "Dearly Beach",
//                            subtitle: "3.8 mi - 1701 S Federal Highway",
//                            check: false,
//                            onpressed: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) {
//                                return TimeScreenView();
//                              }));
//                            },
//                          ),
//                          LocationCard(
//                            title: "Dearly Beach",
//                            subtitle: "3.8 mi - 1701 S Federal Highway",
//                            check: false,
//                             onpressed: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) {
//                                return TimeScreenView();
//                              }));
//                            },
//                          ),
//                          LocationCard(
//                            title: "Dearly Beach",
//                            subtitle: "3.8 mi - 1701 S Federal Highway",
//                            check: false,
//                             onpressed: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) {
//                                return TimeScreenView();
//                              }));
//                            },
//                          ),
//                          LocationCard(
//                            title: "Dearly Beach",
//                            subtitle: "3.8 mi - 1701 S Federal Highway",
//                            check: false,
//                             onpressed: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) {
//                                return TimeScreenView();
//                              }));
//                            },
//                          ),
//                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => ChooseCafeScreenViewModel(),
    );
  }
}

