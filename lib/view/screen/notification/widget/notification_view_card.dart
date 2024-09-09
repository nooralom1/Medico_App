import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class NotificationViewCard extends StatelessWidget {
  const NotificationViewCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.text,
  });

  final double screenHeight;
  final double screenWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 20,bottom: 15),
      child: Container(
        height: screenHeight * 0.12,
        width: screenWidth,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CommonText(
            text:
            text,
            maxLines: 3,
            fSize: 16,
            fWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
