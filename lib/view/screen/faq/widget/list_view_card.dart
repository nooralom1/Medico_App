import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class FaqListViewCard extends StatelessWidget {
  const FaqListViewCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.onTap, required this.title,
  });

  final double screenHeight;
  final double screenWidth;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: screenHeight * 0.08,
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Padding(
              padding:  const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
                  SizedBox(width: screenWidth*0.02,),
                  CommonText(text: title,fSize: 16,fWeight: FontWeight.w600,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
