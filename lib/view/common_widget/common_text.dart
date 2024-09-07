import 'package:flutter/cupertino.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.text,
      this.fColor,
      this.fSize,
      this.fWeight,
      this.maxLines,
      this.overFlow});
  final String text;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final int? maxLines;
  final TextOverflow? overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: fColor, fontSize: fSize, fontWeight: fWeight),
      maxLines: maxLines,
      overflow: overFlow,
    );
  }
}
