import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/widgets/text_style_fourth.dart';
import 'package:ticket_booking_app/core/widgets/text_style_third.dart';

class AppColumnText extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnText(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        //!first line goes here
        TextStyleThird(
          text: topText,
        ),
        const SizedBox(
          height: 5,
        ),
        //!second line goes here
        TextStyleFourth(text: bottomText),
      ],
    );
  }
}
