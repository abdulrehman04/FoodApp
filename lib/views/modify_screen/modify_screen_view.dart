import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:FoodApp/widgets/smart_widgets/food_card.dart';
import 'package:FoodApp/widgets/smart_widgets/ingredient_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'modify_screen_view_model.dart';

class ModifyScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModifyScreenViewModel>.reactive(
      builder:
          (BuildContext context, ModifyScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Modify", style: GoogleFonts.montserrat()),
            actions: [
              Center(
                  child: Text("\$567 - 300 Cal",
                      style: GoogleFonts.montserrat(color: themecolor))),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  FoodCard(
                    image: "assets/food/food1.png",
                    onpressed: () {},
                  ),
                  FoodCard(
                    image: "assets/food/food2.png",
                    onpressed: () {},
                  ),
                  FoodCard(
                    image: "assets/food/food3.png",
                    onpressed: () {},
                  ),
                  FoodCard(
                    image: "assets/food/food4.png",
                    onpressed: () {},
                  ),
                  FoodCard(
                    image: "assets/food/food5.png",
                    onpressed: () {},
                  ),
                  FoodCard(
                    image: "assets/food/food6.png",
                    onpressed: () {},
                  ),
                  FoodCard(
                    image: "assets/food/food7.png",
                    onpressed: () {},
                  ),
                ]),
              ),
              Expanded(
                flex: 5,
                child: DefaultTabController(
                  length: 4,
                  child: Scaffold(
                    backgroundColor: themecolor1,
                    appBar: AppBar(
                      backgroundColor: Colors.black,
                      bottom: PreferredSize(
                        preferredSize: new Size(10.0, 10.0),
                        child: TabBar(
                          indicatorColor: themecolor,
                          indicatorWeight: 4,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: themecolor,
                          unselectedLabelColor: Colors.white,
                          tabs: [
                            Tab(
                              child: Text(
                                "Ingredients",
                                style: GoogleFonts.montserrat(fontSize: ScreenUtil().setSp(11)),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Breads",
                                style: GoogleFonts.montserrat(fontSize: ScreenUtil().setSp(11)),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Confiments",
                                style: GoogleFonts.montserrat(fontSize: ScreenUtil().setSp(11)),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Toppings",
                                style: GoogleFonts.montserrat(fontSize: ScreenUtil().setSp(11)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        ListView(
                          children: [
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food1.png",
                              onpressed: () {},
                            ),
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food2.png",
                              onpressed: () {},
                            ),
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food3.png",
                              onpressed: () {},
                            ),
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food4.png",
                              onpressed: () {},
                            ),
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food5.png",
                              onpressed: () {},
                            ),
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food6.png",
                              onpressed: () {},
                            ),
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food7.png",
                              onpressed: () {},
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 70.0, right: 70.0, bottom: 20.0),
                              child: AppButton(
                                text: "Done",
                                onpressed: () {},
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food1.png",
                              onpressed: () {},
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 70.0, right: 70.0, bottom: 20.0),
                              child: AppButton(
                                text: "Done",
                                onpressed: () {},
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food2.png",
                              onpressed: () {},
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 70.0, right: 70.0, bottom: 20.0),
                              child: AppButton(
                                text: "Done",
                                onpressed: () {},
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            IngredientCard(
                              title: "Dearly Beach",
                              image: "assets/food/food3.png",
                              onpressed: () {},
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 70.0, right: 70.0, bottom: 20.0),
                              child: AppButton(
                                text: "Done",
                                onpressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => ModifyScreenViewModel(),
    );
  }
}




