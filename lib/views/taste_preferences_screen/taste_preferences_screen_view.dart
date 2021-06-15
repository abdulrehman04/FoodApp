import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/widgets/smart_widgets/taste_preference_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'taste_preferences_screen_view_model.dart';

class TastePreferencesScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TastePreferencesScreenViewModel>.reactive(
      builder: (BuildContext context, TastePreferencesScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Taste Preferences", style: GoogleFonts.montserrat()),
          ),
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Flexible(
                  child: Text(
                    'Your Preferences help us personalize your ordering experiance.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40)
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF171B1E),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(10)
                        ),
                        TastePreferenceCard(
                          leadingIcon: 'sugar.png',
                          checked: true,
                          title: 'Low Sugar',
                        ),
                        TastePreferenceCard(
                          leadingIcon: 'fat.png',
                          checked: false,
                          title: 'Low Fat',
                        ),
                        TastePreferenceCard(
                          leadingIcon: 'sodium.png',
                          checked: false,
                          title: 'Low Sodium',
                        ),
                        TastePreferenceCard(
                          leadingIcon: 'dairyfree.png',
                          checked: true,
                          title: 'Dairy Free',
                        ),
                        TastePreferenceCard(
                          leadingIcon: 'glutenfree.png',
                          checked: true,
                          title: 'Gluten Free',
                        ),
                        TastePreferenceCard(
                          leadingIcon: 'vegetarian.png',
                          checked: false,
                          title: 'Vegetarian',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
        );
      },
      viewModelBuilder: () => TastePreferencesScreenViewModel(),
    );
  }
}
