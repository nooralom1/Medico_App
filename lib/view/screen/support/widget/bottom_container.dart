import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.messenger,
    required this.email,
    required this.call,
  });

  final double screenHeight;
  final double screenWidth;
  final VoidCallback messenger;
  final VoidCallback email;
  final VoidCallback call;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.12,
      width: screenWidth,
      color: const Color(0xffE9E9E9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: messenger,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logos/Facebook Messenger.png"),
                const CommonText(
                  text: "Messenger",
                  fSize: 12,
                )
              ],
            ),
          ),
          InkWell(
            onTap: email,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logos/Email.png"),
                const CommonText(
                  text: "Email",
                  fSize: 12,
                )
              ],
            ),
          ),
          InkWell(
            onTap: call,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logos/Ringer Volume.png"),
                const CommonText(
                  text: "Call",
                  fSize: 12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
