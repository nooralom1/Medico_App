import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class SettingListViewCard extends StatelessWidget {
  const SettingListViewCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.name,
    required this.onTap,
  });

  final double screenHeight;
  final double screenWidth;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: screenHeight * 0.06,
          width: screenWidth * 0.93,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.white),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonText(
                  text: name,
                  fSize: 14,
                )
              ],
            ),
          ))),
    );
  }
}
