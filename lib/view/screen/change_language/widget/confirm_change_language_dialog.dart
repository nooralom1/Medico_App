import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/common_widget/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmChangeLanguageDialog extends StatelessWidget {
  const ConfirmChangeLanguageDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      content: SizedBox(
        height: screenHeight*0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.question_mark,
              color: Colors.blue,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            const CommonText(
              text: "Are you sure you want to Change this Language?",
              maxLines: 2,
              fSize: 14,
              fWeight: FontWeight.w600,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const CommonText(
              text: "Please do not close this page!",
              fSize: 10,
              fColor: Color(0xff52575C),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonButton(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.2,
                  buttonName: "No",
                  onTap: () {
                   Get.back();
                  },
                  btnBorderColor: Colors.black,
                  btnColor: Colors.white,
                ),
                CommonButton(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.2,
                  buttonName: "Yes",
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
