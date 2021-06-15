import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:FoodApp/widgets/smart_widgets/order_button.dart';
import 'package:FoodApp/widgets/smart_widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'past_orders_screen_view_model.dart';

class PastOrdersScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PastOrdersScreenViewModel>.reactive(
      builder: (BuildContext context, PastOrdersScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Past Orders",style: GoogleFonts.montserrat()),
            actions: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {})
            ],
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(60)),
                      color: themecolor1,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 15, bottom: 15),
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              OrderCard(
                                date: "27 July",
                                title: "Chiplote Chicken Avcado Melt",
                                subtitle: "Rapid Pick-up Sunrise",
                                price: "10.15",
                                onpressed: () {},
                              ),
                              OrderCard(
                                date: "27 July",
                                title: "Chiplote Chicken Avcado Melt",
                                subtitle: "Rapid Pick-up Sunrise",
                                price: "10.15",
                                onpressed: () {},
                              ),
                              OrderCard(
                                date: "27 July",
                                title: "Chiplote Chicken Avcado Melt",
                                subtitle: "Rapid Pick-up Sunrise",
                                price: "10.15",
                                onpressed: () {},
                              ),
                              OrderCard(
                                date: "27 July",
                                title: "Chiplote Chicken Avcado Melt",
                                subtitle: "Rapid Pick-up Sunrise",
                                price: "10.15",
                                onpressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => PastOrdersScreenViewModel(),
    );
  }
}
