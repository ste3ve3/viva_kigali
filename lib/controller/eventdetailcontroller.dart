import 'package:cnevent/model/event.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/eventdetail/eventdetailscreen.dart';
import 'package:get/get.dart';

class EventDetailController extends GetxController {
  final relatedEventList = [
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
        "https://malaya.com.ph/wp-content/uploads/2022/11/6-.jpg",
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
  ].obs;

  void onEventClicked(Event event) {
    Get.off(const EventDetailScreen(),
        arguments: {"event": event}, preventDuplicates: false);
  }

  void onBuyClicked() {}

  void onFavoriteClicked() {}
}
