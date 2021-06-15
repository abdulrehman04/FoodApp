import 'package:FoodApp/widgets/smart_widgets/order_card1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'past_order_screen_1_view_model.dart';

class PastOrderScreen1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PastOrderScreen1ViewModel>.reactive(
      builder: (BuildContext context, PastOrderScreen1ViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Past Orders", style: GoogleFonts.montserrat()),
            actions: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {})
            ],
          ),
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  OrderCard1(
                    date: "July 27th",
                    title: "Chiplote Chicken Avcado Melt",
                    subtitle: "Rapid Pick-up Sunrise",
                    price: "10.15",
                    onpressed: () {},
                  ),
                  OrderCard1(
                    date: "July 27th",
                    title: "Chiplote Chicken Avcado Melt",
                    subtitle: "Rapid Pick-up Sunrise",
                    price: "10.15",
                    onpressed: () {},
                  ),
                  OrderCard1(
                    date: "July 27th",
                    title: "Chiplote Chicken Avcado Melt",
                    subtitle: "Rapid Pick-up Sunrise",
                    price: "10.15",
                    onpressed: () {},
                  ),
                  OrderCard1(
                    date: "July 27th",
                    title: "Chiplote Chicken Avcado Melt",
                    subtitle: "Rapid Pick-up Sunrise",
                    price: "10.15",
                    onpressed: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => PastOrderScreen1ViewModel(),
    );
  }
}
