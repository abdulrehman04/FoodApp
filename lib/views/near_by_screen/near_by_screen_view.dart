import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/time_screen/time_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/location_card.dart';
import 'package:FoodApp/widgets/smart_widgets/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'near_by_screen_view_model.dart';

class NearByScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NearByScreenViewModel>.reactive(
      builder:
          (BuildContext context, NearByScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Our Menu",style: GoogleFonts.montserrat()),
          ),
          body: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: MapScreen(
                      mapController: MapController(),
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Nearby",
                                  style: GoogleFonts.abel(
                                      color: Colors.white, fontSize: ScreenUtil().setSp(19),)),
                              Row(
                                children: [
                                  Icon(
                                    FlutterIcons.car_hatchback_mco,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("Drive - Through",
                                        style: GoogleFonts.abel(
                                            color: Colors.white, fontSize: 14)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              LocationCard(
                                title: "Miami - W Flagler Street",
                                subtitle: "Cafe #06522112341",
                                subtitle1: "5.1 - 10061 Flagler Street",
                                check: true,
                                onpressed: () {
//                                  Navigator.push(context,
//                                      MaterialPageRoute(builder: (context) {
//                                    return TimeScreenView();
//                                  }));
                                },
                              ),
                              LocationCard(
                                title: "Miami - W Flagler Street",
                                subtitle: "Cafe #06522112341",
                                subtitle1: "5.1 - 10061 Flagler Street",
                                check: true,
                                onpressed: () {
//                                  Navigator.push(context,
//                                      MaterialPageRoute(builder: (context) {
//                                    return TimeScreenView();
//                                  }));
                                },
                              ),
                              LocationCard(
                                title: "Miami - W Flagler Street",
                                subtitle: "Cafe #06522112341",
                                subtitle1: "5.1 - 10061 Flagler Street",
                                check: true,
                                onpressed: () {
//                                  Navigator.push(context,
//                                      MaterialPageRoute(builder: (context) {
//                                    return TimeScreenView();
//                                  }));
                                },
                              ),
                              LocationCard(
                                title: "Miami - W Flagler Street",
                                subtitle: "Cafe #06522112341",
                                subtitle1: "5.1 - 10061 Flagler Street",
                                check: true,
                                onpressed: () {
//                                  Navigator.push(context,
//                                      MaterialPageRoute(builder: (context) {
//                                    return TimeScreenView();
//                                  }));
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        );
      },
      viewModelBuilder: () => NearByScreenViewModel(),
    );
  }
}
