import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle3,
        ),
        InkWell(
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}