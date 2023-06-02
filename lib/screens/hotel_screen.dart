import 'package:airplane_project/utils/app_layout.dart';
import 'package:airplane_project/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      width: size.width * 0.5,
      height: Applayout.getHeight(300),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Applayout.getHeight(100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assests/images/${hotel['image']}"))),
          ),
          const Gap(20),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(15),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
