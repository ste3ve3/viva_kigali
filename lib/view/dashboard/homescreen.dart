import 'package:carousel_slider/carousel_slider.dart';
import 'package:cnevent/controller/homecontroller.dart';
import 'package:cnevent/view/catgeory/categoryscreen.dart';
import 'package:cnevent/view/dashboard/widgets/bannercard.dart';
import 'package:cnevent/view/dashboard/widgets/categorycard.dart';
import 'package:cnevent/view/dashboard/widgets/eventlistcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Get.put(HomeController());
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Featured Events",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Obx(
                () => CarouselSlider(
                  items: model.featureList.map((e) {
                    return Builder(
                      builder: (BuildContext context) {
                        return BannerCard(
                          e,
                          () {
                            model.onEventClicked(e);
                          },
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 250.0,
                    aspectRatio: 4 / 3,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 10),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(CategoryScreen());
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.white.withOpacity(1),
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Obx(
                () => ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: model.categoryList.length,
                  itemBuilder: (context, index) {
                    final category = model.categoryList[index];
                    return CategoryCard(category, () {
                      model.onViewAllEventClicked();
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/ad_banner.jpg",
                  height: 120,
                  fit: BoxFit.cover,
                  width: Get.size.width,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Explore Events",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    model.onViewAllEventClicked();
                  },
                  child: Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white.withOpacity(1),
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: model.list.length,
                  itemBuilder: (context, index) {
                    final banner = model.list[index];
                    return EventListCard(
                      banner,
                      () {
                        model.onEventClicked(banner);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
