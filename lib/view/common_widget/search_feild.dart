import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.textEditingController, required this.onTap, required this.hinText, this.prefixIcon, required this.suffixIcon, this.borderSide,
  });

  final double screenHeight;
  final double screenWidth;
  final TextEditingController textEditingController;
  final VoidCallback onTap;
  final String hinText;
  final IconData? prefixIcon;
  final IconData suffixIcon;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
          hintText: hinText,
          filled: true,
          fillColor: Colors.white,
          suffixIcon: InkWell(
            onTap: onTap,
            child: Card(
              color: const Color(0xff22A6FE),
              child: SizedBox(
                height: screenHeight*0.01,
                width: screenWidth*0.01,
                child:  Center(
                  child: Icon(suffixIcon,color: Colors.white,),
                ),
              ),
            ),
          ),
          border: OutlineInputBorder(
              borderSide:borderSide ?? BorderSide.none,
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
