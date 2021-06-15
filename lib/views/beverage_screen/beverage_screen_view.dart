import 'package:FoodApp/Globals.dart';
import 'package:FoodApp/theme/css.dart';
import 'package:FoodApp/views/cart_screen/cart_screen_view.dart';
import 'package:FoodApp/views/item_detail_screen/item_detail_screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'beverage_screen_view_model.dart';

class BeverageScreenView extends StatelessWidget {
  String name;
  Map category;
  BeverageScreenView(this.category, this.name);


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BeverageScreenViewModel>.reactive(
      builder: (BuildContext context, BeverageScreenViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("$name", style: GoogleFonts.montserrat()),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(viewModel.categoryImage),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("${viewModel.subtitle}",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: ScreenUtil().setSp(20))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: themecolor1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                             
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Container(
                                height: ScreenUtil().setHeight(50),
                                child: Center(
                                  child: TextFormField(
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                    onChanged: (value) {},
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.w300),
                                    cursorColor: Color(0xFF4FBE9F),
                                    decoration: new InputDecoration(
                                      suffixIcon: InkWell(
                                        onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) {
                                                return CartScreenView(viewModel);
                                              }));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                "assets/shopcart.png",
                                                height: ScreenUtil().setHeight(25)
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: cart.length==0?Container():Container(
                                                  height: 15,
                                                  width: 15,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(60),
                                                  ),
                                                  child: Center(child: Text('${cart.length}', style: TextStyle(color: Colors.white),),),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Search",
                                      hintStyle: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize:ScreenUtil().setSp(14),
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  StaggeredGridView.count(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 0.1,
                                    mainAxisSpacing: 0.1,
                                    staggeredTiles: [
                                      for (int i = 0;
                                          i < viewModel.foodDetails.length;
                                          i++)
                                        StaggeredTile.count(1, 1.39),
                                    ],
                                    children: viewModel.foodDetails.map((f) {
                                      return GestureDetector(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:16.0,right: 16.0),
                                            child: Material(
                                              color: Colors.black,
                                              shadowColor: Colors.black38,
                                              elevation: 15.0,
                                              borderRadius: BorderRadius.circular(10),
                                              clipBehavior: Clip.antiAlias,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 5,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),
                                                          image: DecorationImage(
                                                              image: NetworkImage(f.get('image')),
                                                              fit: BoxFit.cover)),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 3,
                                                    child: Container(
                                                      child: Padding(
                                                        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 7.0, bottom: 7.0),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text(f.get('name'),
                                                              textAlign: TextAlign.start,
                                                              style: GoogleFonts.montserrat(
                                                                  color: Colors.white,
                                                                  fontSize: ScreenUtil().setSp(15),
                                                                  fontWeight: FontWeight.w600),
                                                            ),
                                                            SizedBox(
                                                              height: ScreenUtil().setHeight(5)
                                                            ),
                                                            Text('\$${f.get('sizeAndPrice')['regular']}',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: GoogleFonts.montserrat(
                                                                  color:
                                                                      themecolor,
                                                                  fontSize: ScreenUtil().setSp(11),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w200),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (context) {
                                                  return ItemDetailScreenView(f, viewModel);
                                                }));
                                          });
                                    }).toList(),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        );
      },
      viewModelBuilder: () => BeverageScreenViewModel(category: category),
    );
  }
}
