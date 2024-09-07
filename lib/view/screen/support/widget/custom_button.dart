import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportButton extends StatelessWidget {
  const SupportButton({
    super.key,
    required this.height,
    required this.width,
    required this.buttonName, this.fColor, this.fSize, this.fWeight, required this.onTap, this.btnColor, this.btnBorderColor, this.buttonNameImage,
  });

  final Color? btnBorderColor;
  final Color? btnColor;
  final double height;
  final double width;
  final String buttonName;
  final String? buttonNameImage;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: btnColor ?? Color(0xff22A6FE), borderRadius: BorderRadius.circular(10),border: Border.all(color: btnBorderColor?? Color(0xff22A6FE))),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(buttonNameImage??""),
                SizedBox(width: 5,),
                CommonText(
                          text: buttonName,
                          fColor: fColor,
                          fSize: fSize,
                          fWeight: fWeight,
                        ),
              ],
            )),
      ),
    );
  }
}
