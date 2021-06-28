import 'package:flutter/material.dart';

import 'color.dart';
import 'demins.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kButtonColor,
          borderRadius: BorderRadius.circular(kAppCornerRadius)),
      margin: EdgeInsets.all(kAppPadding),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Center(
          child: Text(
        "Lets Go !",
        style:
            TextStyle(color: kWhite, fontSize: 24, fontWeight: FontWeight.bold),
      )),
    );
  }
}
