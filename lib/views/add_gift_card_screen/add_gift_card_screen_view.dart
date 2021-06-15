import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/cardInfo_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'add_gift_card_screen_view_model.dart';

class AddGiftCardScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddGiftCardScreenViewModel>.reactive(
      builder: (BuildContext context, AddGiftCardScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Add Gift Card", style: GoogleFonts.montserrat()),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Image.asset("assets/giftcard.png",height: ScreenUtil().setHeight(100),),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 17.0, right: 17.0, top: 13),
                child: Material(
                  color: themecolor2,
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      children: [
                        CardField(
                          hinttext: 'Gift Card Number',
                          type: false,
                          width: double.infinity,
                          onchanged: (value) {
                            //giftNumber = value;
                          },
                        ),
                        CardField(
                          hinttext: 'Pin Number',
                          type: false,
                          width: double.infinity,
                          onchanged: (value) {
                            //pin= value;
                          },
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "If you have a giftcard without a papin, Please bring\nthe card to Las Vegas, We can only register cards\nwith PIN number.",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: ScreenUtil().setSp(11),fontWeight: FontWeight.w200),
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
      viewModelBuilder: () => AddGiftCardScreenViewModel(),
    );
  }
}
