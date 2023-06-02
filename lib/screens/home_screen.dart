import 'package:airplane_project/screens/hotel_screen.dart';
import 'package:airplane_project/screens/ticket_view.dart';
import 'package:airplane_project/utils/app_info_list.dart';
import 'package:airplane_project/utils/app_styles.dart';
import 'package:airplane_project/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello Everyone",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assests/images/icon.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      const Gap(5),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                    bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          const Gap(25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(
                        ticket: singleTicket,
                      ))
                  .toList(),
            ),
          ),
          const Gap(40),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleTextWidget(
                  bigText: "Hotels", smallText: "View all")),
          const Gap(25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
