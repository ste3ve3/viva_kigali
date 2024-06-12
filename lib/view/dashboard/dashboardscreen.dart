// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cnevent/controller/dashboardcontroller.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/dashboard/explorescreen.dart';
import 'package:cnevent/view/dashboard/homescreen.dart';
import 'package:cnevent/view/dashboard/morescreen.dart';
import 'package:cnevent/view/dashboard/ticketscreen.dart';
import 'package:cnevent/view/notification/notificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(DashboardController());
    return Obx(
      () => Container(
        decoration: backgroundDecoration(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: model.selected.value == 3
              ? null
              : model.selected.value == 1
                  ? null
                  : AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            personImage,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Steve Ndicunguye,",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white70,
                                size: 12,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Rwanda, Kigali",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                      letterSpacing: .8),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      actions: [
                        GestureDetector(
                          onTap: () {
                            Get.to(NotificationScreen());
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              currentIndex: model.selected.value,
              unselectedItemColor: Colors.white,
              selectedItemColor: Color(0xffF86939),
              onTap: (value) {
                model.selected.value = value;
                model.onNavChanged(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_filled),
                  label: 'Home',
                  backgroundColor: Colors
                      .white, // Optional, only if BottomNavigationBarType.shifting
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.explore),
                  label: 'Explore',
                  backgroundColor: Colors
                      .white, // Optional, only if BottomNavigationBarType.shifting
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.book_outlined),
                  label: 'My Tickets',
                  backgroundColor: Colors
                      .white, // Optional, only if BottomNavigationBarType.shifting
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.more_horiz),
                  label: 'More',
                  backgroundColor: Colors
                      .white, // Optional, only if BottomNavigationBarType.shifting
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: PageView(
              controller: model.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeScreen(),
                ExploreScreen(),
                TicketScreen(),
                MoreScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
