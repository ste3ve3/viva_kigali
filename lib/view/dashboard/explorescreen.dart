import 'package:cnevent/controller/explorecontroller.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/dashboard/widgets/explorecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Get.put(ExploreController());
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  onTap: () {
                    model.onSearchClicked();
                  },
                  validator: (value) {
                    return null;
                  },
                  readOnly: true,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: appThemeColor,
                        size: 28,
                      ),
                      hintText: 'Explore Events',
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
              const SizedBox(
                height: 10,
              ),
              Obx(
                    () =>
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: MasonryGridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: model.list.length,
                          itemBuilder: (context, index) {
                            final banner = model.list[index];
                            return ExploreCard(banner,() {
                              model.onEventClicked(banner);
                            },);
                          },
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
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
