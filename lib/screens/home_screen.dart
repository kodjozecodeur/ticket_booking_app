import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/res/media.dart';
import 'package:ticket_booking_app/core/res/styles/app_styles.dart';
import 'package:ticket_booking_app/core/widgets/app_double_text.dart';
import 'package:ticket_booking_app/core/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                //first row for title and logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //title and greetings
                    Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, //fix le petit decalage vers la droite du second text //!important
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    //logo goes here
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                //row for search area
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      //title and greetings
                      Text("Seach"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),
                const SizedBox(
                  height: 20,
                ),
                const TicketView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
