import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:flutter/material.dart';

class ConfirmChangeLanguageDialog extends StatelessWidget {
  const ConfirmChangeLanguageDialog({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.no, required this.yes,
  });

  final double screenHeight;
  final double screenWidth;
  final VoidCallback no;
  final VoidCallback yes;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          const Icon(
            Icons.question_mark,
            color: Colors.blue,
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: CommonText(
              text: "Are you sure you want to Change this Language?",
              maxLines: 2,
              fSize: 14,
              fWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          const CommonText(
            text: "Please do not close this page",
            fSize: 10,
            fColor: Color(0xff52575C),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CommonButton(
                height: screenHeight * 0.05,
                width: screenWidth * 0.2,
                buttonName: "No",
                onTap: () {
                  no;
                },
                btnBorderColor: Colors.black,
                btnColor: Colors.white,
              ),
              CommonButton(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.2,
                  buttonName: "Yes",
                  onTap: () {
                    yes;
                  }),
            ],
          )
        ],
      ),
    );
  }
}