import 'package:FoodApp/Models/FoodItem.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/beverage_screen/beverage_screen_view_model.dart';
import 'package:FoodApp/widgets/smart_widgets/pickup_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'item_detail_screen_view_model.dart';
import 'package:FoodApp/Globals.dart';

class ItemDetailScreenView extends StatelessWidget {
  BeverageScreenViewModel beverageModel;
  ItemDetailScreenView(this.item, this.beverageModel);
  FoodItem item;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ItemDetailScreenViewModel>.reactive(
      builder: (BuildContext context, ItemDetailScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Details", style: GoogleFonts.montserrat()),
          ),
          body: Center(
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(item.image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40.0, bottom: 10, left: 20, right: 20),
                  child: Container(
                    width: ScreenUtil().setWidth(450),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.name,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
//                            Text(
//                              'Size : ${viewModel.sizes[viewModel.selectedSize]}',
//                              style: GoogleFonts.montserrat(
//                                color: Colors.white,
//                                fontSize: 14,
//                              ),
//                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${viewModel.selectedSize.price}',
                              style: GoogleFonts.montserrat(
                                color: themecolor,
                                fontSize: 15,
                              ),
                            ),
//                            Text(
//                              'Quantity : ${viewModel.quantity}',
//                              style: GoogleFonts.montserrat(
//                                color: Colors.white,
//                                fontSize: 14,
//                              ),
//                            ),
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 3),
                                color: Color(0xFF181C1E),
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/dot.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Size',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
//                                      SizedBox(
//                                        height: 2,
//                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 16.0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              isExpanded: true,
                                              value: viewModel.selectedSize,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                              dropdownColor: Color(0xFF181C1E),
                                              hint: Text('Select Size', style: TextStyle(color: Colors.white),),
                                              onChanged: (val){
//                                                sst((){
                                                  viewModel.selectedSize = val;
                                                  viewModel.notifyListeners();
//                                                });
                                              },
                                              items: viewModel.item.SAP.map((e){
                                                return DropdownMenuItem(child: Text(e.size), value: e,);
                                              }).toList()
                                          ),
                                        ),
//                                        child: Text(
//                                          'Regular',
//                                          style: GoogleFonts.montserrat(
//                                            fontSize: 18,
//                                            fontWeight: FontWeight.w500,
//                                            color: Colors.white,
//                                          ),
//                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 3),
                                color: Color(0xFF181C1E),
                                height: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/dot.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Quantity',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 16.0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              isExpanded: true,
                                              value: viewModel.quantity,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                              dropdownColor: Color(0xFF181C1E),
                                              hint: Text('Select Quantity', style: TextStyle(color: Colors.white),),
                                              onChanged: (val){
//                                                sst((){
                                                viewModel.quantity = val;
                                                viewModel.notifyListeners();
//                                                });
                                              },
                                              items: List.generate(50, (index){return DropdownMenuItem(child: Text('${index+1}'), value: index+1,);}),
                                          ),
                                        ),
//                                        child: Text(
//                                          'Regular',
//                                          style: GoogleFonts.montserrat(
//                                            fontSize: 18,
//                                            fontWeight: FontWeight.w500,
//                                            color: Colors.white,
//                                          ),
//                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(450),
                  color: Color(0xFF111416),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add Special Instruction',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                          PickUpButton(
                            text: 'Add',
                            colour: themecolor,
                            textColor: Colors.black,
                          )
                        ],
                      ),
                      Text(
                        'About This',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item.about,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Detailed Ingredients',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item.detailedIngredient,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: ScreenUtil().setWidth(450),
                        decoration: BoxDecoration(
                            color: Color(0xFF181C1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nutritional Info',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Column(
                                children: viewModel.showNutritionalInfo(),
                              ),
//                              Row(
//                                children: [
//                                  NutritionalInfo(
//                                    text1: 'Calories',
//                                    text2: '40 Cal',
//                                  ),
//                                  SizedBox(
//                                    width: 70,
//                                  ),
//                                  NutritionalInfo(
//                                    text1: 'Calories From Fat',
//                                    text2: '0 Cal',
//                                  ),
//                                ],
//                              ),
//                              Row(
//                                children: [
//                                  NutritionalInfo(
//                                    text1: 'Fats',
//                                    text2: '0 gm',
//                                  ),
//                                  SizedBox(
//                                    width: 70,
//                                  ),
//                                  NutritionalInfo(
//                                    text1: 'Saturated Fat',
//                                    text2: '0 gm',
//                                  ),
//                                ],
//                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: ScreenUtil().setHeight(30),
                          width: ScreenUtil().setWidth(450),
                          decoration: BoxDecoration(
                              color: Color(0xFF23292C),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Center(
                            child: Text(
                              'See All',
                              style: GoogleFonts.montserrat(
                                  color: themecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Allergens',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item.allergens,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      StatefulBuilder(builder: (context, sst) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PickUpButton(
                              text:
                                  'Add To Order \$${viewModel.selectedSize.price}',
                              colour: themecolor,
                              textColor: Colors.black,
                              onpressed: () {
                                if(viewModel.quantity>0 && viewModel.selectedSize != null){
                                  viewModel.addToCart();
                                  showSnack(context, 'Item Added to Cart');
                                  Navigator.pop(context);
                                }
                                else{
                                  print(viewModel.quantity);
                                  showSnack(context, 'Please select a size and Quantity');
                                }
//                                viewModel.showModel(context).then((value) {
//                                  showSnack(context, 'Item Added to Cart');
////                                  Navigator.pop(context);
//                                  Navigator.pop(context);
//                                });
                              },
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: themecolor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(FontAwesome.cart_plus),
                            )
                          ],
                        );
                      })
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => ItemDetailScreenViewModel(
          item: item, beverageScreenViewModel: beverageModel),
    );
  }
}
