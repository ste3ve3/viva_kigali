import 'package:cnevent/model/category.dart';
import 'package:cnevent/model/event.dart';
// import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/allevents/alleventscreen.dart';
import 'package:cnevent/view/eventdetail/eventdetailscreen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var categoryList = [
    Category(1, "Sports",
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601"),
    Category(5, "Technology",
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg"),
    Category(2, "Music",
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg"),
    Category(3, "Religions",
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg"),
    Category(4, "Food",
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg"),
  ].obs;

  final featureList = [
    Event(
        1,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601",
        true),
    Event(
        2,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Bruce Melody Classic Concert",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        false),
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
        4,
        DateTime(2024, 01, 01, 22, 00, 00),
        "Nel Ngabo Album launch with KINA Music",
        "Kigali Arena",
        "Remera",
        "Event Community",
        dummy,
        "https://groupgordon.com/wp-content/uploads/2022/04/Messe_Luzern_Corporate_Event.jpg",
        true),
    Event(
        5,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Bruce Melody Classic Concert",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        false),
    Event(
        6,
        DateTime(2024, 05, 05, 09, 00, 00),
        "Ariel Ways New Song Performance",
        "Serena Hotel",
        "Remera",
        "Event Community",
        dummy,
        "https://4.imimg.com/data4/TO/FW/MY-9116046/corporate-party-event-management-500x500.jpg",
        false),
  ].obs;

  final list = [
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
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
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
        "Bruce Melody Classic Concert",
        "Camp Kigali",
        "Remera",
        "Event Community",
        dummy,
        "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
        false),
    Event(
        5,
        DateTime(2024, 09, 03, 22, 00, 00),
        "Bruce Melody Classic Concert",
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
  ].obs;

  void onEventClicked(Event event) {
    Get.to(const EventDetailScreen(), arguments: {"event": event});
  }

  void onViewAllEventClicked() {
    Get.to(AllEventScreen());
  }

  // @override
  // void onInit() {
  //   AdMobService.createInterstitialAd();
  //   AdMobService.showInterstitialAd();
  //   super.onInit();
  // }
}
