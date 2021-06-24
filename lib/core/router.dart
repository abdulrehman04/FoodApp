// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:FoodApp/core/router_constants.dart';

import 'package:FoodApp/views/splash_screen/splash_screen_view.dart' as view0;
import 'package:FoodApp/views/login_screen/login_screen_view.dart' as view1;
import 'package:FoodApp/views/signup_screen/signup_screen_view.dart' as view2;
import 'package:FoodApp/views/bottom_bar/bottom_bar_view.dart' as view3;
import 'package:FoodApp/views/time_screen/time_screen_view.dart' as view4;
import 'package:FoodApp/views/home_screen/home_screen_view.dart' as view5;
import 'package:FoodApp/views/welcome_screen/welcome_screen_view.dart' as view6;
import 'package:FoodApp/views/my_reward_screen/my_reward_screen_view.dart'
    as view7;
import 'package:FoodApp/views/menu_screen/menu_screen_view.dart' as view8;
import 'package:FoodApp/views/my_information_screen/my_information_screen_view.dart'
    as view9;
import 'package:FoodApp/views/profile_screen/profile_screen_view.dart'
    as view10;
import 'package:FoodApp/views/past_orders_screen/past_orders_screen_view.dart'
    as view11;
import 'package:FoodApp/views/near_by_screen/near_by_screen_view.dart'
    as view12;
import 'package:FoodApp/views/choose_cafe_screen/choose_cafe_screen_view.dart'
    as view13;
import 'package:FoodApp/views/get_coffee_screen/get_coffee_screen_view.dart'
    as view14;
import 'package:FoodApp/views/no_account_screen/no_account_screen_view.dart'
    as view15;
import 'package:FoodApp/views/reset_password_screen/reset_password_screen_view.dart'
    as view16;
import 'package:FoodApp/views/communication_preference_screen/communication_preference_screen_view.dart'
    as view17;
import 'package:FoodApp/views/locate_account_screen/locate_account_screen_view.dart'
    as view18;
import 'package:FoodApp/views/look_up_screen/look_up_view.dart' as view19;
import 'package:FoodApp/views/past_orders_screen/past_orders_screen_view.dart'
    as view20;
import 'package:FoodApp/views/past_order_screen_1/past_order_screen_1_view.dart'
    as view21;
import 'package:FoodApp/views/payment_screen/payment_screen_view.dart'
    as view22;
import 'package:FoodApp/views/privacy_policy_screen/privacy_policy_screen_view.dart'
    as view23;
import 'package:FoodApp/views/profile_and_settings_screen/profile_and_settings_screen_view.dart'
    as view24;
import 'package:FoodApp/views/gift_card_screen/gift_card_screen_view.dart'
    as view25;
import 'package:FoodApp/views/social_accounts_screen/social_accounts_screen_view.dart'
    as view26;
import 'package:FoodApp/views/terms_of_use_screen/terms_of_use_screen_view.dart'
    as view27;
import 'package:FoodApp/views/taste_preferences_screen/taste_preferences_screen_view.dart'
    as view28;
import 'package:FoodApp/views/taste_preferences_screen_2/taste_preferences_screen_2_view.dart'
    as view29;
import 'package:FoodApp/views/rapid_pickup_screen_2/rapid_pickup_screen_2_view.dart'
    as view30;
import 'package:FoodApp/views/add_credit_card_screen/add_credit_card_screen_view.dart'
    as view31;
import 'package:FoodApp/views/add_gift_card_screen/add_gift_card_screen_view.dart'
    as view32;
import 'package:FoodApp/views/beverage_screen/beverage_screen_view.dart'
    as view33;
import 'package:FoodApp/views/cart_screen/cart_screen_view.dart' as view34;
import 'package:FoodApp/views/modify_screen/modify_screen_view.dart' as view35;
import 'package:FoodApp/views/order_detail_screen/order_detail_screen_view.dart'
    as view36;
import 'package:FoodApp/views/arrived_for_order_screen/arrived_for_order_screen_view.dart'
    as view37;
import 'package:FoodApp/views/item_detail_screen/item_detail_screen_view.dart'
    as view38;
import 'package:FoodApp/views/cart_details_screen/cart_details_screen_view.dart'
    as view39;
import 'package:FoodApp/views/payment_options_screen/payment_options_screen_view.dart'
    as view40;
import 'package:FoodApp/views/my_subscription_screen/my_subscription_screen_view.dart'
    as view41;
import 'package:FoodApp/views/communication_preference_dialogue/communication_preference_dialogue_view.dart'
    as view42;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view0.SplashScreenView());
      case loginScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view1.LoginScreenView());
      case signupScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view2.SignupScreenView());
      case bottomBarViewRoute:
        return MaterialPageRoute(builder: (_) => view3.BottomBarView());
      case timeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view4.TimeScreenView(null));
      case homeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view5.HomeScreenView());
      case welcomeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view6.WelcomeScreenView());
      case myRewardScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view7.MyRewardScreenView());
      case menuScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view8.MenuScreenView(null));
      case myInformationScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view9.MyInformationScreenView());
      case profileScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view10.ProfileScreenView());
      case pastOrdersScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view11.PastOrdersScreenView());
      case nearByScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view12.NearByScreenView());
      case chooseCafeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view13.ChooseCafeScreenView(null));
      case getCoffeeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view14.GetCoffeeScreenView());
      case noAccountScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view15.NoAccountScreenView());
      case resetPasswordScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view16.ResetPasswordScreenView());
      case communicationPreferenceScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view17.CommunicationPreferenceScreenView());
      case locateAccountScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view18.LocateAccountScreenView());
      case lookUpViewRoute:
        return MaterialPageRoute(builder: (_) => view19.LookUpView());
      case pastOrdersViewRoute:
        return MaterialPageRoute(builder: (_) => view20.PastOrdersScreenView());
      case pastOrderScreen1ViewRoute:
        return MaterialPageRoute(builder: (_) => view21.PastOrderScreen1View());
      case paymentScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view22.PaymentScreenView());
      case privacyPolicyScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view23.PrivacyPolicyScreenView());
      case profileAndSettingsScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view24.ProfileAndSettingsScreenView());
      case giftCardScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view25.GiftCardScreenView());
      case socialAccountsScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view26.SocialAccountsScreenView());
      case termsOfUseScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view27.TermsOfUseScreenView());
      case tastePreferencesScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view28.TastePreferencesScreenView());
      case tastePreferencesScreen2ViewRoute:
        return MaterialPageRoute(
            builder: (_) => view29.TastePreferencesScreen2View());
      case rapidPickupScreen2ViewRoute:
        return MaterialPageRoute(
            builder: (_) => view30.RapidPickupScreen2View());
      case addCreditCardScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view31.AddCreditCardScreenView());
      case addGiftCardScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view32.AddGiftCardScreenView());
      case beverageScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view33.BeverageScreenView(null));
      case cartScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view34.CartScreenView(null));
      case modifyScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view35.ModifyScreenView());
      case orderDetailScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view36.OrderDetailScreenView());
      case arrivedForOrderScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view37.ArrivedForOrderScreenView());
      case itemDetailScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view38.ItemDetailScreenView(null, null));
      case cartDetailsScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view39.CartDetailsScreenView());
      case paymentOptionsScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view40.PaymentOptionsScreenView());
      case mySubscriptionScreenViewRoute:
        return MaterialPageRoute(
            builder: (_) => view41.MySubscriptionScreenView());
      case communicationPreferenceDialogueViewRoute:
        return MaterialPageRoute(
            builder: (_) => view42.CommunicationPreferenceDialogueView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
