import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/get_coffee_screen/get_coffee_screen_view.dart';
import 'package:FoodApp/views/home_screen/home_screen_view.dart';
import 'package:FoodApp/views/menu_screen/menu_screen_view.dart';
import 'package:FoodApp/views/near_by_screen/near_by_screen_view.dart';
import 'package:FoodApp/views/profile_screen/profile_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'bottom_bar_view_model.dart';

class BottomBarView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
      builder: (BuildContext context, BottomBarViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: getViewForIndex(viewModel.currentIndex), // new
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.rubik(),
            selectedItemColor: themecolor,
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            elevation: 10,
            backgroundColor: Color(0xFF1f2326),
            onTap: viewModel.setIndex, // new
            currentIndex: viewModel.currentIndex, // new
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    FlutterIcons.home_ant,
                    size: 25,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    FlutterIcons.food_fork_drink_mco,
                    size: 25,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    FlutterIcons.location_pin_ent,
                    size: 25,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    FlutterIcons.file_document_box_outline_mco,
                    size: 25,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    FlutterIcons.person_mdi,
                    size: 25,
                  ),
                  label: ""),
            ],
          ),
        );
      },
      viewModelBuilder: () => BottomBarViewModel(ctx: context),
    );
  }
  Widget getViewForIndex(int index){
    print(index);
    switch(index){
      case 0:
        return HomeScreenView();
      case 1:
        return MenuScreenView(null);
      case 2:
        return NearByScreenView();
      case 3:
        return GetCoffeeScreenView();
      case 4:
        return ProfileScreenView();
      default:
        return HomeScreenView();
    }
  }
}

