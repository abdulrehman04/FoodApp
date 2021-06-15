import 'package:flutter/material.dart';

class FieldWithCenterText extends StatelessWidget {
  const FieldWithCenterText(
      {Key key,
      this.hinttext,
      this.onchanged,
      this.type,
      this.registerFormKey,
      this.hintTextAlignment})
      : super(key: key);

  final hinttext;
  final type;
  final onchanged;
  final registerFormKey;
  final hintTextAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 24, right: 24, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1f2326),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x1F000000),
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 50,
            child: Center(
              child: TextFormField(
                textAlign: hintTextAlignment,
                maxLines: 1,
                obscureText: type,
                onChanged: onchanged,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'WorkSans',
                ),
                cursorColor: Color(0xFF4FBE9F),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: hinttext,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
