import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamroapp/src/constants/colors.dart';
import 'package:hamroapp/src/constants/image_strings.dart';
import 'package:hamroapp/src/constants/sizes.dart';
import 'package:hamroapp/src/features/authentication/controllers/SplashScreenController.dart';
import '../../../../constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.starAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                height: 150,
                child: Image(
                  image: AssetImage(cSplashScreenIcon),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 150,
                left: splashController.animate.value ? cDefaultSize : -150,
                child: AnimatedOpacity(
                  opacity: splashController.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 100 : 0,
                height: 350,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Image(
                    image: AssetImage(cSplashScreenImg),
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 60 : 0,
                right: cDefaultSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Container(
                    width: cSplashContainerSize,
                    height: cSplashContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: cPrimaryColor,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
