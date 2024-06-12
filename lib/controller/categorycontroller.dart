import 'package:cnevent/common/widgets/custom_filter_chip.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/model/category.dart';
import 'package:cnevent/model/event.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/eventdetail/eventdetailscreen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categoryList = [
    Category(1, "Sports",
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601"),
    Category(5, "Technology",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(2, "Music",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(3, "Religions",
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg"),
    Category(4, "Food",
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg"),
    Category(1, "Sports",
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601"),
    Category(5, "Technology",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(2, "Music",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(3, "Religions",
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg"),
    Category(4, "Food",
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg"),
    Category(1, "Sports",
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601"),
    Category(5, "Technology",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(2, "Music",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(3, "Religions",
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg"),
    Category(4, "Food",
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg"),
  ].obs;
}
