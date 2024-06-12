import 'package:cnevent/common/widgets/custom_filter_chip.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/model/event.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/eventdetail/eventdetailscreen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllEventController extends GetxController {
  final list = [
    Event(
        1,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg",
        true),
    Event(
        3,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg",
        false),
    Event(
        2,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Masamba Intore Tour and seminar",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        false),
    Event(
        5,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Masamba Intore Tour and seminar",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://assets.livenationcdn.com/uploads/fillmore-header.png?auto=webp&quality=70&width=1319",
        false),
    Event(
        4,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music and seminar",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://upload.wikimedia.org/wikipedia/commons/3/3e/Live_8_-_edinburgh_50000_-_the_final_push_rjl.jpg",
        true),
    Event(
        1,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/AxixatUptown-1699062412.png&w=900&height=601",
        true),
    Event(
        2,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Masamba Intore Tour and seminar",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://cdn.explara.com/blog/2016/03/16125118/4.png",
        false),
    Event(
        6,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance and seminar",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601",
        false),
    Event(
        4,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music and seminar",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        true),
    Event(
        3,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance and seminar",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://malaya.com.ph/wp-content/uploads/2022/11/6-.jpg",
        false),
    Event(
        1,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music and seminar",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg",
        true),
    Event(
        3,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance and seminar",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg",
        false),
    Event(
        2,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Masamba Intore Tour and seminar",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        false),
    Event(
        5,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Masamba Intore Tour and seminar",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://assets.livenationcdn.com/uploads/fillmore-header.png?auto=webp&quality=70&width=1319",
        false),
    Event(
        4,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music and seminar",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://upload.wikimedia.org/wikipedia/commons/3/3e/Live_8_-_edinburgh_50000_-_the_final_push_rjl.jpg",
        true),
    Event(
        1,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music and seminar",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/AxixatUptown-1699062412.png&w=900&height=601",
        true),
    Event(
        2,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Masamba Intore Tour and seminar",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://cdn.explara.com/blog/2016/03/16125118/4.png",
        false),
    Event(
        6,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance and seminar",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601",
        false),
    Event(
        4,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music and seminar",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        true),
    Event(
        3,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance and seminar",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://malaya.com.ph/wp-content/uploads/2022/11/6-.jpg",
        false),
  ].obs;

  void onEventClicked(Event event) {
    Get.to(EventDetailScreen(), arguments: {"event": event});
  }

  final filterCategories = [
    "Sports",
    "Technology",
    "Foodie",
    "Music",
    "Dogs",
    "Nature",
    "Volunteer"
  ];

  final sortingList = [
    "Recently Added",
    "Low to High",
    "High to Low",
    "Popular Events",
  ];

  var selectedSorting = "Recently Added".obs;

  var maxValue = 1000.0.obs;
  var minValue = 100.0.obs;

  void onFilterClicked() {
    final locationController = TextEditingController();
    Get.bottomSheet(
        barrierColor: Colors.black87,
        backgroundColor: appDarkColor,
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Center(
                        child: Text(
                      "Filter",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.close),
                      color: Colors.white,
                    )
                  ],
                ),
                const Text(
                  "Categories",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 8),
                  child: Wrap(
                    spacing: 2,
                    children: List.generate(
                      filterCategories.length,
                      (index) {
                        return CustomFilterClip(filterCategories[index]);
                      },
                    ),
                  ),
                ),
                const Text(
                  "Price",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Obx(
                  () => RangeSlider(
                      inactiveColor: Colors.grey,
                      activeColor: appThemeColor,
                      values: RangeValues(minValue.value, maxValue.value),
                      min: 0,
                      max: 10000,
                      onChanged: (RangeValues values) {
                        minValue.value = values.start;
                        maxValue.value = values.end;
                      }),
                ),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${minValue.value.toInt()}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "\$${maxValue.value.toInt()}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    "Location",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                TextFormField(
                  controller: locationController,
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  onTapOutside: (PointerDownEvent event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      hintText: "e.g Kigali Arena",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.location_searching,
                        size: 20,
                        color: Colors.white54,
                      ),
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(20))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Price Sorting",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: appThemeColor)),
                    ),
                    style: const TextStyle(color: Colors.white),
                    value: selectedSorting.value,
                    items: sortingList
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      return null;
                    },
                    onChanged: (value) {
                      //Do something when selected item is changed.
                      selectedSorting.value = value!;
                    },
                    onSaved: (value) {},
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: appDarkColor,
                        border: Border.all(color: appThemeColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: appThemeColor),
                          onPressed: () {
                            Get.back();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Filter",
                                style: TextStyle(color: Colors.white)),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Get.back();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Reset",
                                style: TextStyle(color: appThemeColor)),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
