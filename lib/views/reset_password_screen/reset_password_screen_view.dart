import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'reset_password_screen_view_model.dart';

class ResetPasswordScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResetPasswordScreenViewModel>.reactive(
      builder: (BuildContext context, ResetPasswordScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Help",style: GoogleFonts.montserrat()),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset("assets/email.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Check Your Email Please',
                  style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w400,fontSize: ScreenUtil().setSp(20)),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'We have sent the password reset instruction to\nthe email linked to your account.',textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w200,fontSize: ScreenUtil().setSp(15)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'You can also order without login!',textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w200,fontSize: ScreenUtil().setSp(15)),
                ),
              ),
              AppButton(
                text: "Order Now",
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => ResetPasswordScreenViewModel(),
    );
  }
}
