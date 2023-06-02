import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab, secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(Applayout.getHeight(50)),
                ),
                color: const Color(0xFFF4F6FD),
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(Applayout.getHeight(50)),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
