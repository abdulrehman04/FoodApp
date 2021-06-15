import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    this.image,
    this.onpressed,
  }) : super(key: key);
  final image;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: GestureDetector(
        child: Container(
          width: ScreenUtil().setWidth(90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
        ),
        onTap: onpressed,
      ),
    );
  }
}