import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:flutter/cupertino.dart';

class DepartmentListViewCard extends StatelessWidget {
  const DepartmentListViewCard({
    super.key,
    required this.image,
    required this.name,
    required this.onTap,
  });

  final String image;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Column(
          children: [
            Image.network(image),
            CommonText(
              text: name,
              fSize: 10,
            )
          ],
        ),
      ),
    );
  }
}
