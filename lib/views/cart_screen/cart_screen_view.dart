import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/beverage_screen/beverage_screen_view_model.dart';
import 'package:FoodApp/widgets/smart_widgets/app_button.dart';
import 'package:FoodApp/widgets/smart_widgets/cart_card.dart';
import 'package:FoodApp/widgets/smart_widgets/price_info.dart';
import 'package:FoodApp/widgets/smart_widgets/redeem_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'cart_screen_view_model.dart';

class CartScreenView extends StatelessWidget {
  BeverageScreenViewModel beverageScreenViewModel;
  CartScreenView(this.beverageScreenViewModel);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartScreenViewModel>.reactive(
      builder: (BuildContext context, CartScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Cart", style: GoogleFonts.montserrat()),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        "assets/hand.png",
                        height:  ScreenUtil().setHeight(14)
                      ),
                    ),
                  ),
                  title: Text('${currentOrder.selectedMethod}',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: ScreenUtil().setSp(13))),
                  trailing: GestureDetector(
                    child: Container(
                      height: ScreenUtil().setHeight(25),
                      width: ScreenUtil().setWidth(80),
                      decoration: BoxDecoration(
                          color: themecolor,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20.0),
                              right: Radius.circular(20.0))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Center(
                          child: Text(
                            "Change",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.w500, fontSize: ScreenUtil().setSp(12)),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      viewModel.showDialog(context);
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: themecolor1,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Column(
                          children: cart.map((e){
                            return CartCard(
                              path: "${e.item.image}",
                              title: "${e.item.name}",
                              subtitle: "",
                              addtap: (){
                                viewModel.addQuantity(cart.indexOf(e));
                              },
                              minustap: (){
                                viewModel.subtractQuantity(cart.indexOf(e));
                              },
                              removetap: (){
                                viewModel.remove(e);
                              },
                              type: "${e.size}",
                              price: "${(e.unitPrice * e.quantity).toStringAsPrecision(4)}",
                              quantity: "${e.quantity}",
                            );
                          }).toList(),
                        ),
//                        CartCard(
//                          path: "assets/beverages/coffee1.png",
//                          title: "Cubar Coradito",
//                          subtitle: "0 Cal per 16 Fl oz",
//                          addtap: (){
//                            //increase quantity
//                          },
//                          minustap: (){
//                            //decrease quantity
//                          },
//                          removetap: (){
//                            //it will remove all item
//                          },
//                          type: "Regular",
//                          price: "3.00",
//                          quantity: "2",
//                        ),
//                         CartCard(
//                          path: "assets/beverages/coffee2.png",
//                          title: "Expresso",
//                          subtitle: "0 Cal per 16 Fl oz",
//                          addtap: (){
//                            //increase quantity
//                          },
//                          minustap: (){
//                            //decrease quantity
//                          },
//                          removetap: (){
//                            //it will remove all item
//                          },
//                          type: "Regular",
//                          price: "5.00",
//                          quantity: "1",
//                        ),
                        
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/reward1.png"),
                            SizedBox(
                              width: ScreenUtil().setWidth(10),
                            ),
                            Text(
                              "3",
                              style: GoogleFonts.montserrat(
                                  color: themecolor, fontSize:  ScreenUtil().setSp(14)),
                            ),
                            Text(
                              " Rewards Available",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize:  ScreenUtil().setSp(14)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        ),
                        Row(
                          children: [
                            RedeemCard(
                              price: "1",
                              text: "OFF Cuban\nCoffee",
                              onpressed: () {},
                            ),
                            RedeemCard(
                              price: "1",
                              text: "OFF Cuban\nCoffee",
                              onpressed: () {},
                            ),
                            RedeemCard(
                              price: "1",
                              text: "OFF Cuban\nCoffee",
                              onpressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: themecolor1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          Text(
                            "Price Details",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize:  ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          PriceInfo(
                            text: "Subtotal",
                            price: "${viewModel.getSubtotal()}",
                          ),
                          PriceInfo(
                            text: "Rewards",
                            price: "0.00",
                          ),
                          PriceInfo(
                            text: "Taxes",
                            price: "${viewModel.getTaxes()}",
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(20),
                          ),
                          Text(
                            "Apply Coupons",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize:  ScreenUtil().setSp(15),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    viewModel.checkOut(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(50),
                    color: themecolor,
                    child: Center(
                      child: Text(
                        "Checkout",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.w500, fontSize:  ScreenUtil().setSp(20)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => CartScreenViewModel(beverageScreenViewModel),
    );
  }
}


