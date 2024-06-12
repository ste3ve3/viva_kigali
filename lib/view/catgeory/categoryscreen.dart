import 'package:cnevent/controller/alleventcontroller.dart';
import 'package:cnevent/controller/categorycontroller.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/dashboard/widgets/categorycard.dart';
import 'package:cnevent/view/dashboard/widgets/categorylistcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(CategoryController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "All Categories",
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 50.0,
          width: double.maxFinite,
          child: AdWidget(
              key: UniqueKey(),
              ad: AdMobService.createBannerAd()..load()),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  onTap: () {},
                  validator: (value) {
                    return null;
                  },
                  onTapOutside: (PointerDownEvent event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  readOnly: false,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: appThemeColor,
                        size: 28,
                      ),
                      hintText: 'Search Category',
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                      filled: true,
                      fillColor: Colors.white.withOpacity(.15),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15)),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Obx(
                () => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 3/2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      children: List.generate(model.categoryList.length, (index) {
                        final category = model.categoryList[index];
                        return CategoryListCard(category, () {

                        });
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
