import 'package:dr_apointment/controller/getx_controller/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    Get.put(SplashController());

    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: Center(
            child: Image.asset("assets/logos/Medico.png"),
          ),
        ),
      ),
    );
  }
}
