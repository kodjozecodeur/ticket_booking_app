import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/res/styles/app_styles.dart';
import 'package:ticket_booking_app/core/widgets/app_column_text.dart';
import 'package:ticket_booking_app/core/widgets/app_layoutbuilder.dart';
import 'package:ticket_booking_app/core/widgets/big_circle_dot.dart';
import 'package:ticket_booking_app/core/widgets/big_dot.dart';
import 'package:ticket_booking_app/core/widgets/text_style_fourth.dart';
import 'package:ticket_booking_app/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size.height);
    return SizedBox(
      width: size.width * 0.85, //we will only take 85percent of the screen
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                //ticket column
                children: [
                  //show departure and destinations with icons first line
                  Row(
                    children: [
                      //first part upper
                      //nyc text
                      const TextStyleThird(
                        text: "NYC",
                      ),
                      Expanded(
                          child:
                              Container()), //expanded provide the space necessary by inserting an empty container
                      const BigDot(),
                      //london text
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(randomDivider: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(
                        text: "LDN",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //show departure and destinations name with time
                  Row(
                    children: [
                      //nyc text
                      const SizedBox(
                        width: 100, //to center the text,
                        //!text don't align by themselves,
                        //!you have to give the a width by wrap
                        //!ping them inside a SizedBox widgrt
                        child: TextStyleFourth(
                          text: "New-York",
                        ),
                      ),
                      Expanded(
                          child:
                              Container()), //expanded provide the space necessary by inserting an empty container
                      const TextStyleFourth(
                        text: "08H 30 M",
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //!!interim part
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircleDot(),
                  Expanded(
                    child: AppLayoutBuilder(
                      randomDivider: 16,
                      width: 8,
                    ),
                  ),
                  RotatedBox(quarterTurns: 2, child: BigCircleDot()),
                ],
              ),
            ),
            //!!interim part
            //orange part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: const Column(
                //ticket column
                children: [
                  //show departure and destinations with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //?first column goes here
                      AppColumnText(
                        alignment: CrossAxisAlignment.start,
                        topText: '1 MAY',
                        bottomText: 'Date',
                      ),
                      //?first column end here
                      //?second column goes here
                      AppColumnText(
                        alignment: CrossAxisAlignment.center,
                        topText: '08H 00 AM',
                        bottomText: 'Departure Time',
                      ),
                      //?second column end here
                      //?Third column goes here
                      AppColumnText(
                        alignment: CrossAxisAlignment.end,
                        topText: '23',
                        bottomText: 'Number',
                      ),
                      //?third column end here
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ), //the height of the card will be the same no matter what, a fuxed height
    );
  }
}
