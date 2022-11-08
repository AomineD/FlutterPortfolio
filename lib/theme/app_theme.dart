import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color primaryColor = Colors.black;
  static Color subtitleColor = Colors.black87;
  static Color accentColor = Colors.white;
  static ThemeData mainTheme = ThemeData.dark().copyWith(
      textButtonTheme: TextButtonThemeData(style: resumeBtnStyle2),
      primaryColor: primaryColor,
      backgroundColor: accentColor,
      textTheme: GoogleFonts.mavenProTextTheme().copyWith(
        headline1: TextStyle(color: accentColor),
        headline2: TextStyle(color: accentColor),
        headline3: TextStyle(color: accentColor),
        headline4: TextStyle(),
        subtitle1: TextStyle(color: subtitleColor),
        headline5: TextStyle(color: accentColor),
        headline6: TextStyle(color: primaryColor),
        subtitle2: TextStyle(color: accentColor),
        bodyText2: TextStyle(color: accentColor),
        bodyText1: TextStyle(color: primaryColor, fontSize: 16),
      ));

// RESUME BUTTON THEME
  static Color getColorBackground(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(0xff22397D);
    }
    return accentColor;
  }

  static Color getColorForeground(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return accentColor;
    }
    return primaryColor;
  }

  static EdgeInsets getPadding(Set<MaterialState> states) {
    return const EdgeInsets.symmetric(horizontal: 15, vertical: 10);
  }

  static TextStyle resumeTextStyle = const TextStyle(fontSize: 16);

  static ButtonStyle resumeBtnStyle2 = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(getColorBackground),
      padding: MaterialStateProperty.resolveWith(getPadding),
      foregroundColor: MaterialStateProperty.resolveWith(getColorForeground),
      textStyle: MaterialStateProperty.all(resumeTextStyle));

// DEMO BUTTON THEME

  static Color getColorBackgroundDemo(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(0xff22397D);
    }
    return const Color(0xff3653A7);
  }

  static Color getColorForegroundDemo(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return accentColor;
    }
    return accentColor;
  }

  static EdgeInsets getPaddingDemo(Set<MaterialState> states) {
    return const EdgeInsets.symmetric(horizontal: 15, vertical: 10);
  }

  static TextStyle demoTextStyle = const TextStyle(fontSize: 16);

  static ButtonStyle demoBtnStyle = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith(getColorBackgroundDemo),
      padding: MaterialStateProperty.resolveWith(getPaddingDemo),
      foregroundColor:
          MaterialStateProperty.resolveWith(getColorForegroundDemo),
      textStyle: MaterialStateProperty.all(demoTextStyle));
}
