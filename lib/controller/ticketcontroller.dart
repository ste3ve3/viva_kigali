import 'package:cnevent/model/ticket.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  final list = [
    Ticket(
        1,
        "Steve Ndicunguye",
        "Nel Ngabo Album launch with KINA Music",
        "Kigali Arena",
        DateTime(2024, 01, 01, 22, 00, 00),
        "VIP Access",
        "0360002914564652",
        14.5,
        4,
        "")
  ].obs;
}
