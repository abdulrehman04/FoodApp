import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/time_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'get_coffee_screen_view_model.dart';

class GetCoffeeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GetCoffeeScreenViewModel>.reactive(
      builder:
          (BuildContext context, GetCoffeeScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          //appBar: AppBar(),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/coffeebg.png",
                        ),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/coffee.png",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Get It Before It's Gone.",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(25),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Subscribe to Las Vegas Coffee!",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(18),
                                fontWeight: FontWeight.w300),
                          ),
                          TimeButton(
                            text: "Get Free Coffee",
                            color: themecolor,
                            onpressed: () {},
                          ),
                          Text(
                            "Terms Apply",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(9),
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => GetCoffeeScreenViewModel(),
    );
  }
}
