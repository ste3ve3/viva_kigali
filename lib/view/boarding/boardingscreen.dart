import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class BoardingScreen extends StatelessWidget {
  var index = 0.obs;
  final pageController = PageController();

  BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                index.value = value;
              },
              children: [
                pageOne(),
                pageTwo(),
                pageThree(),
              ],
            ),
          ),
          Obx(() => Container(
            height: 40,
            child: PageViewDotIndicator(
                currentItem: index.value,
                count: 3,
                size: const Size(10, 10),
                unselectedColor: Colors.grey,
                selectedColor: appThemeColor,
              ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: appThemeColor),
                onPressed: () {
                  if(index.value < 2){
                    pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                  }else{
                    Get.offAll(LoginScreen());
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Center(
                      child: Obx(
                    () => Text(
                      index.value == 2
                          ? "Let's get started"
                          : "Continue",
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                )),
          )
        ],
      ),
    );
  }

  Widget pageOne() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Stack(
            children: [
              Image.asset(boardingImage,
                  height: Get.size.height * .70,
                  width: double.infinity,
                  fit: BoxFit.cover),
              Container(
                color: Colors.black.withOpacity(.7),
                height: Get.size.height * .70,
                width: double.infinity,
              ),
              const Positioned(
                  right: 10,
                  top: 50,
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      appIcon,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Book your favorite today",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              Text(
                textAlign: TextAlign.center,
                "Get your favorite artist, shows\nin your pocket",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ))
      ],
    );
  }

  Widget pageTwo() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Stack(
            children: [
              Image.asset(boardingImage,
                  height: Get.size.height * .70,
                  width: double.infinity,
                  fit: BoxFit.cover),
              Container(
                color: Colors.black.withOpacity(.7),
                height: Get.size.height * .70,
                width: double.infinity,
              ),
              const Positioned(
                  right: 10,
                  top: 50,
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      appIcon,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explore Events Nearby",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              Text(
                textAlign: TextAlign.center,
                "Get your favorite artist, shows\nin your pocket",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ))
      ],
    );
  }

  Widget pageThree() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Stack(
            children: [
              Image.asset(boardingImage,
                  height: Get.size.height * .70,
                  width: double.infinity,
                  fit: BoxFit.cover),
              Container(
                color: Colors.black.withOpacity(.7),
                height: Get.size.height * .70,
                width: double.infinity,
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      appIcon,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start Booking Now",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              Text(
                textAlign: TextAlign.center,
                "Get your favorite artist, shows\nin your pocket",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
