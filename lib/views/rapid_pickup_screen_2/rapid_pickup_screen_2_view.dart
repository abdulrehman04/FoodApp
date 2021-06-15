import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/order_items_card.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'rapid_pickup_screen_2_view_model.dart';

class RapidPickupScreen2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RapidPickupScreen2ViewModel>.reactive(
      builder: (BuildContext context, RapidPickupScreen2ViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Rapid Pickup", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListView(
                children: [
                  Text('Picking Up At',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 120.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image:
                          DecorationImage(image: AssetImage('assets/hand.png')),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Sunrise',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('132010 West sunrise Bldv',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                          color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PickUpButton(
                          text: 'Pick Up',
                          colour: themecolor,
                          textColor: Colors.black,
                        ),
                        PickUpButton(
                          text: 'ASAP 10 Min',
                          colour: Colors.black,
                          textColor: themecolor,
                        ),
                        PickUpButton(
                          text: '12:20 PM',
                          colour: Colors.black,
                          textColor: themecolor,
                        ),
                      ],
                    ),
                  ),
                  OrderItemCard(
                    title: 'Cafe con Leche',
                    text2: r'$ 2.50 - Regular - 50Cal per 16 Ft Ounce',
                    customized: false,
                    itemPic: 'orderitem1.jpg',
                  ),
                  OrderItemCard(
                    title: 'Cuban Sandwich',
                    text2: r'$ 2.50 - Regular - 50Cal per 16 Ft Ounce',
                    customized: true,
                    itemPic: 'orderitem2.jpg',
                  ),
                  OrderItemCard(
                    title: 'Arroz Con Pollo',
                    text2: r'$ 12.50 - Bonless Chicken Breast, Jasmine Rice',
                    customized: true,
                    itemPic: 'orderitem3.jpg',
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 100, right: 100),
                    child: PickUpButton(
                      text: 'Tap Item To Order',
                      colour: themecolor,
                      textColor: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => RapidPickupScreen2ViewModel(),
    );
  }
}
