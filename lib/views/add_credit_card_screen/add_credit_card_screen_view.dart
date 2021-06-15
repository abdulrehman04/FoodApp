import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:FoodApp/widgets/smart_widgets/cardInfo_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'add_credit_card_screen_view_model.dart';

class AddCreditCardScreenView extends StatefulWidget {
  @override
  _AddCreditCardScreenViewState createState() =>
      _AddCreditCardScreenViewState();
}

class _AddCreditCardScreenViewState extends State<AddCreditCardScreenView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddCreditCardScreenViewModel>.reactive(
      builder: (BuildContext context, AddCreditCardScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Add Credit Card", style: GoogleFonts.montserrat()),
          ),
          body: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 50,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Scan Your Card",
                      style:
                          GoogleFonts.montserrat(color: themecolor, fontSize: ScreenUtil().setSp(16)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17.0, right: 17.0, top: 13),
                    child: Material(
                      color: themecolor2,
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Column(
                          children: [
                            CardField(
                              hinttext: 'Card Number',
                              type: false,
                              width: double.infinity,
                              onchanged: (value) {
                                //creditcard = value;
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               CardField(
                                  hinttext: 'Expiration Date',
                                  type: false,
                                  width: ScreenUtil().setWidth(170),
                                  onchanged: (value) {
                                    //expiration_date = value;
                                  },
                                ),
                                CardField(
                                  hinttext: 'Security Date',
                                  type: false,
                                  width: ScreenUtil().setWidth(140),
                                  onchanged: (value) {
                                    //security_date = value;
                                  },
                                ),
                              ],
                            ),
                            CardField(
                              hinttext: 'Card Holder Name',
                              type: false,
                              width: double.infinity,
                              onchanged: (value) {
                                //name = value;
                              },
                            ),
                           CardField(
                              hinttext: 'Zip Code',
                              type: false,
                              width: double.infinity,
                              onchanged: (value) {
                                //zip_code = value;
                              },
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                            width: 3.0, color: Color(0xFF6de790)),
                                        left: BorderSide(
                                            width: 3.0, color: Color(0xFF6de790)),
                                        right: BorderSide(
                                            width: 3.0, color: Color(0xFF6de790)),
                                        bottom: BorderSide(
                                            width: 3.0, color: Color(0xFF6de790)),
                                      ),
                                    ),
                                    child: Checkbox(
                                        activeColor: themecolor,
                                        checkColor: Colors.black,
                                        value: viewModel.checkBox,
                                        onChanged: (value) {
                                          setState(() {
                                            viewModel.checkBox = value;
                                          });
                                        }),
                                    width: ScreenUtil().setWidth(20),
                                    height: ScreenUtil().setHeight(20)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 11.0),
                                  child: Text(
                                    "Make this my default card.",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: ScreenUtil().setSp(12)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "The selected credit card will be your default\npayment method for all digits payment at\nLas Vegas.",
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AppButton(text:"Save",onpressed: (){},),
                  )
                ],
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => AddCreditCardScreenViewModel(),
    );
  }
}
