import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';
import 'demins.dart';

final ThemeData appTheme = buildAppTheme();

ThemeData buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    scaffoldBackgroundColor: kWhite,
    cardColor: kWhite,
    textSelectionColor: kPrimaryColor,
    errorColor: kErrorRed,
    textTheme: buildAppTextTheme(base.textTheme),
    buttonTheme: base.buttonTheme.copyWith(
      textTheme: ButtonTextTheme.normal,
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: kWhite,
        elevation: 0,
        textTheme: TextTheme(
            headline6: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black))),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      enabledBorder: new OutlineInputBorder(
        borderRadius: BorderRadius.circular(kAppCornerRadius),
        borderSide: new BorderSide(
          color: kPrimaryColor,
          width: 1,
        ),
      ),
      border: new OutlineInputBorder(
        borderRadius: BorderRadius.circular(kAppCornerRadius),
        borderSide: new BorderSide(color: kPrimaryColor, width: 1),
      ),
      disabledBorder: InputBorder.none,
      focusedBorder: new OutlineInputBorder(
        borderRadius: BorderRadius.circular(kAppCornerRadius),
        borderSide: new BorderSide(color: kPrimaryColor, width: 1),
      ),
      errorBorder: new OutlineInputBorder(
        borderRadius: BorderRadius.circular(kAppCornerRadius),
        borderSide: new BorderSide(color: kErrorRed, width: 1),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryColor,
      ),
    ),
  );
}

TextTheme buildAppTextTheme(TextTheme textTheme) {
  return GoogleFonts.ralewayTextTheme(textTheme).copyWith(
    headline1: GoogleFonts.raleway(textStyle: textTheme.headline1),
    headline2: GoogleFonts.raleway(textStyle: textTheme.headline2),
    headline3: GoogleFonts.raleway(textStyle: textTheme.headline3),
    headline4: GoogleFonts.raleway(textStyle: textTheme.headline4),
    headline5: GoogleFonts.raleway(
        textStyle: textTheme.headline5.copyWith(
            color: kPrimaryColor, fontSize: 24.0, fontWeight: FontWeight.bold)),
    headline6: GoogleFonts.raleway(textStyle: textTheme.headline6),
    bodyText1: GoogleFonts.raleway(textStyle: textTheme.bodyText1),
    bodyText2: GoogleFonts.raleway(
        textStyle: textTheme.bodyText2.copyWith(color: kTextSecondaryColor)),
    subtitle1: GoogleFonts.raleway(textStyle: textTheme.subtitle1),
    subtitle2: GoogleFonts.raleway(textStyle: textTheme.subtitle2),
    button: GoogleFonts.raleway(
        textStyle: textTheme.button.copyWith(color: kWhite)),
    caption: GoogleFonts.raleway(
        textStyle: textTheme.caption.copyWith(color: kTextSecondaryColor)),
    overline: GoogleFonts.raleway(textStyle: textTheme.overline),
  );
}
