import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class ShowAboutDialog extends StatelessWidget {
  const ShowAboutDialog({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: SizedBox(
          height: screenHeight * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CommonText(
                text: "About US",
                fSize: 16,
                fWeight: FontWeight.w700,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const CommonText(
                text: "Develop By NOOR",
                fSize: 14,
                fWeight: FontWeight.w600,
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              const CommonText(text: "Version : 1 (Alpha)")
            ],
          ),
        ),
      ),
    );
  }
}
