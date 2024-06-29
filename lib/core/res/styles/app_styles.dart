import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf); //primary color of the app

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color ticketBlue = const Color(0xFF526799);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 26,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 21,
    color: textColor,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
}
