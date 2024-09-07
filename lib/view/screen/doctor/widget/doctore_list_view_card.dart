import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/material.dart';

class DoctorListViewCard extends StatelessWidget {
  const DoctorListViewCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.imageUrl,
    required this.name,
    required this.specialties,
    required this.neurologist,
    required this.education,
    required this.working,
    required this.bmDcNumber,
    required this.experience, required this.onTap,
  });

  final double screenWidth;
  final double screenHeight;
  final String imageUrl;
  final String name;
  final String specialties;
  final String neurologist;
  final String education;
  final String working;
  final String bmDcNumber;
  final String experience;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: screenWidth * 0.7,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.network(imageUrl),
              ),
              SizedBox(
                width: screenHeight * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CommonText(
                    text: name,
                    fSize: 16,
                    fWeight: FontWeight.w700,
                  ),
                  CommonText(
                    text: specialties,
                    fSize: 12,
                  ),
                  Container(
                    height: screenHeight * 0.028,
                    width: screenWidth * 0.22,
                    decoration: BoxDecoration(
                        color: const Color(0xff22A6FE),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: CommonText(
                        text: neurologist,
                        fColor: Colors.white,
                        fSize: 12,
                      ),
                    ),
                  ),
                  CommonText(
                    text:
                    education,
                    fSize: 12,
                  ),
                  CommonText(
                    text: working,
                    fSize: 12,
                  ),
                  CommonText(
                    text: bmDcNumber,
                    fSize: 12,
                  ),
                  CommonText(
                    text: experience,
                    fSize: 12,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
