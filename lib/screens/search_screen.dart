import 'package:airplane_project/utils/app_layout.dart';
import 'package:airplane_project/utils/app_styles.dart';
import 'package:airplane_project/widgets/icon_text_widge.dart';
import 'package:airplane_project/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getWidth(20),
            vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Text(
            "What are\n you Looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: Applayout.getHeight(35)),
          ),
          Gap(Applayout.getHeight(20)),
          const AppTicketTabs(
              firstTab: "Airlines Tickets", secondTab: "Hotels"),
          Gap(Applayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(Applayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(Applayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Applayout.getWidth(18),
                horizontal: Applayout.getHeight(15)),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(Applayout.getWidth(10))),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(Applayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(Applayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Applayout.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHeight(15),
                    vertical: Applayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: Applayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Applayout.getHeight(12)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assests/images/five.jpg")),
                      ),
                    ),
                    Gap(Applayout.getHeight(12)),
                    Text(
                      "20% discount on early booking of this flight. Don't miss out this chance.",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: Applayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB888),
                          borderRadius:
                              BorderRadius.circular(Applayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: Applayout.getHeight(15),
                            horizontal: Applayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(Applayout.getHeight(10)),
                            Text(
                              "Take the Survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(Applayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ))
                    ],
                  ),
                  Gap(Applayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: Applayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: Applayout.getHeight(15),
                        horizontal: Applayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(Applayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 30),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 40),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 30),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
