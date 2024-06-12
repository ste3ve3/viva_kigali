import 'package:cnevent/common/widgets/custom_filter_chip.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/model/event.dart';
import 'package:cnevent/model/notification.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/eventdetail/eventdetailscreen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  final list = [
    NotificationModel(
      1,
      "Delight users with e-books",
      "The fact that the users had shown interest points to their intent to subscribe.",
      DateTime(2024, 01, 01, 22, 00, 00),
    ),
    NotificationModel(
      3,
      "Keep users in the loop",
      "Retarget users when they go dormant, A notification that caters their interest can be sent in let’s say on the 7th day of abandonment to bring them back to the website.",
      DateTime(2024, 01, 01, 22, 00, 00),
    ),
    NotificationModel(
      2,
      "Instill a sense of familiarity",
      "Everyone likes recommendations when they cater to the interest. With time you know what a particular user is interested in. Start sending them notifications with the kind of articles that they would usually read.",
      DateTime(2024, 01, 01, 22, 00, 00),
    ),
    NotificationModel(
      5,
      "Bring back subscription abandoners with FOMO",
      "40% of the visitors that land on your news pages do not read after the first fold. Remind them that they have not completed a read. Draw attention to what they have not read yet.",
      DateTime(2024, 01, 01, 22, 00, 00),
    ),
    NotificationModel(
      4,
      "Quench the thirst to learn with online courses",
      "Be it subscribing to exclusive content or getting users into your email subscription list",
      DateTime(2024, 01, 01, 22, 00, 00),
    ),
  ].obs;
}
