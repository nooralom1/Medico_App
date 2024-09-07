import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.height,
    required this.width,
    required this.buttonName,
    this.fColor,
    this.fSize,
    this.fWeight,
    required this.onTap,
    this.btnColor,
    this.btnBorderColor,
  });

  final Color? btnBorderColor;
  final Color? btnColor;
  final double height;
  final double width;
  final String buttonName;
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
            color: btnColor ?? const Color(0xff22A6FE),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: btnBorderColor ?? const Color(0xff22A6FE))),
        child: Center(
            child: CommonText(
              text: buttonName,
              fColor: fColor,
              fSize: fSize,
              fWeight: fWeight,
            )),
      ),
    );
  }
}
