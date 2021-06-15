import 'package:FoodApp/widgets/smart_widgets/lookup_method_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'look_up_view_model.dart';

class LookUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LookUpViewModel>.reactive(
      builder: (BuildContext context, LookUpViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Look Up", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 26, right: 26, top: 20),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Please Select any menthod to look up your information.",
                      style: GoogleFonts.montserrat(
                        fontSize: ScreenUtil().setSp(17),
                        color: Colors.white,
                      ),
                    ),
                    LookUpMethodCard(
                      title: 'Use Email',
                      leadingIcon: 'email1.png',
                      ontap: () {},
                    ),
                    LookUpMethodCard(
                      title: 'Use Phone Number',
                      leadingIcon: 'phone.png',
                      ontap: () {},
                    ),
                    LookUpMethodCard(
                      title: 'My Las Vegas Phone Number',
                      leadingIcon: 'phone1.png',
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => LookUpViewModel(),
    );
  }
}
