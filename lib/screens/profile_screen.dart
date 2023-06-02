import 'package:airplane_project/utils/app_layout.dart';
import 'package:airplane_project/utils/app_styles.dart';
import 'package:airplane_project/widgets/column_layout.dart';
import 'package:airplane_project/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getHeight(20),
            vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getHeight(80),
                width: Applayout.getHeight(80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Applayout.getHeight(10),
                  ),
                  image: const DecorationImage(
                      image: AssetImage("assests/images/icon.png")),
                ),
              ),
              Gap(Applayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(Applayout.getHeight(2)),
                  Text(
                    "New York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(Applayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHeight(5),
                        vertical: Applayout.getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(Applayout.getHeight(3)),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(Applayout.getHeight(5)),
                      const Text(
                        "Premium status",
                        style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gap(Applayout.getHeight(5)),
                    ]),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(Applayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(Applayout.getHeight(9)),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: Applayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(Applayout.getHeight(18)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(Applayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHeight(25),
                    vertical: Applayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(Applayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(Applayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(Applayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getHeight(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(Applayout.getHeight(15)),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 June 2022",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(Applayout.getHeight(4)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(Applayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "23 043",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Airline Co.",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(Applayout.getHeight(12)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(Applayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(Applayout.getHeight(12)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(Applayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "DBestech",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(Applayout.getHeight(25)),
          InkWell(
            onTap: () {},
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
