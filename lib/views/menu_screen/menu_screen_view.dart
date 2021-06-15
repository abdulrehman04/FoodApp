import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/beverage_screen/beverage_screen_view.dart';
import 'package:FoodApp/widgets/smart_widgets/menu_list_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'menu_screen_view_model.dart';

class MenuScreenView extends StatefulWidget {
  DocumentSnapshot restaurant;
  MenuScreenView(this.restaurant);

  @override
  _MenuScreenViewState createState() => _MenuScreenViewState();
}

class _MenuScreenViewState extends State<MenuScreenView> {

  List categories = [];
  List values = [];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuScreenViewModel>.reactive(
      builder: (BuildContext context, MenuScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Our Menu", style: GoogleFonts.montserrat()),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Browse By Category",
                    style: GoogleFonts.abel(
                        color: themecolor,
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 12,
                    child: Container(
                      decoration: BoxDecoration(
                          color: themecolor1,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: categories.map((e){
                                return Column(
                                  children: [
                                    MenuListTile(
                                      icon: Icons.food_bank,
                                      title: e,
                                      onpressed: () {
//                                        print(values);
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) {
                                              return BeverageScreenView(values[categories.indexOf(e)], e);
                                            }));
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20.0),
                                      child: Divider(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
//                              children: [
//                                MenuListTile(
//                                  icon: Icons.star,
//                                  title: "Favorites",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.sun_o_faw,
//                                  title: "In - Season",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.food_mco,
//                                  title: "Appetizers",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.food_variant_mco,
//                                  title: "Sides",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.bowl_mco,
//                                  title: "Salads",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.fish_faw5s,
//                                  title: "Chicken",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.food_fork_drink_mco,
//                                  title: "Pork",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: Icons.emoji_food_beverage,
//                                  title: "Beverages",
//                                  onpressed: () {
////                                    print(Icons.emoji_food_beverage.codePoint);
//                                    Navigator.push(context,
//                                        MaterialPageRoute(builder: (context) {
//                                          return BeverageScreenView();
//                                        }));
//                                  },
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                                MenuListTile(
//                                  icon: FlutterIcons.fish_mco,
//                                  title: "Seafoods",
//                                  onpressed: () {},
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(
//                                      left: 20.0, right: 20.0),
//                                  child: Divider(
//                                    color: Colors.grey,
//                                  ),
//                                ),
//                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => MenuScreenViewModel(),
    );
  }

  @override
  void initState() {
    if(widget.restaurant!=null){
      Map DBcategories = Map.from(widget.restaurant.get('categories'));
      DBcategories.forEach((key, value) {
        values.add(value);
        setState(() {
          categories.add(key);
        });
      });
    }
  }
}
