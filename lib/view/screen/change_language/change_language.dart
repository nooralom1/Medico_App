import 'package:dr_apointment/controller/getx_controller/language_list.dart';
import 'package:dr_apointment/view/common_widget/common_Text.dart';
import 'package:dr_apointment/view/screen/change_language/widget/confirm_change_language_dialog.dart';
import 'package:dr_apointment/view/screen/change_language/widget/language_list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageListController controller = Get.put(LanguageListController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.085,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade100,
          title: Image.asset("assets/logos/Group 8.png"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications_active_outlined),
            )
          ],
        ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Colors.blue.shade100,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 27,
                      )),
                  const CommonText(
                    text: "Language",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Obx(
                () => controller.isLoading.isFalse
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: controller.language.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return LanguageListViewCard(
                                screenHeight: screenHeight,
                                screenWidth: screenWidth,
                                onTap: () {
                                  Get.dialog(const ConfirmChangeLanguageDialog());
                                },
                                title:
                                    "${controller.language[index].language}");
                          },
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
