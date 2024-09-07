import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class HospitalListViewCard extends StatelessWidget {
  const HospitalListViewCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageUrl,
    required this.name,
    required this.category,
    required this.location,
    required this.code, required this.onTap,
  });

  final double screenHeight;
  final double screenWidth;
  final String imageUrl;
  final String name;
  final String category;
  final String location;
  final String code;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: screenHeight * 0.15,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Image.network(
                    imageUrl,
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.2,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: screenWidth * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonText(
                        text: name,
                        fSize: 16,
                        fWeight: FontWeight.w600,
                        overFlow: TextOverflow.ellipsis,
                      ),
                      CommonText(
                        text: category,
                        fSize: 12,
                        fWeight: FontWeight.w500,
                        overFlow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          CommonText(
                            text: location,
                            fSize: 12,
                            fWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          CommonText(
                            text: code,
                            fSize: 12,
                            fWeight: FontWeight.w600,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
