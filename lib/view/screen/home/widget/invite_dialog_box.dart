import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class InviteDialog extends StatelessWidget {
  const InviteDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return  AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: SizedBox(
        height: screenHeight*0.14,
        child:  const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CommonText(
              text: "Send Invitation",
              fSize: 24,
              fWeight: FontWeight.w600,
            ),
            CommonText(
              text: "Invite By SMS",
              fSize: 16
            ),
            CommonText(
              text: "Share",
              fSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
