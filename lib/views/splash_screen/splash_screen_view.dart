import 'package:FoodApp/views/communication_preference_dialogue/communication_preference_dialogue_view.dart';
import 'package:FoodApp/views/welcome_screen/welcome_screen_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'splash_screen_view_model.dart';

class SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    ScreenUtil.init(context, allowFontScaling: true, height: 683, width: 411);
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      builder:
          (BuildContext context, SplashScreenViewModel viewModel, Widget _) {
        return AnimatedSplashScreen(
          animationDuration: Duration(milliseconds: 2000),
          splash: 'assets/logo.png',
          splashIconSize: 200,
          backgroundColor: Colors.black,
          nextScreen: WelcomeScreenView(),
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.fade,
        );
      },
      viewModelBuilder: () => SplashScreenViewModel(),
    );
  }
}
