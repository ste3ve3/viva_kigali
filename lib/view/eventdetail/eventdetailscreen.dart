import 'package:cnevent/controller/eventdetailcontroller.dart';
import 'package:cnevent/model/event.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/allevents/alleventscreen.dart';
import 'package:cnevent/view/buyticket/buyticketscreen.dart';
import 'package:cnevent/view/dashboard/widgets/eventlistcard.dart';
import 'package:cnevent/view/organizerscreen/organizerscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(EventDetailController());
    final Event event = Get.arguments["event"];
    return Container(
        decoration: backgroundDecoration(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black26,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          extendBodyBehindAppBar: true,
          bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: appThemeColor),
                      onPressed: () {
                        Get.to(BuyTicketScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Buy Ticket  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "\$${event.price}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Card(
                  color: Colors.white,
                  shape: CircleBorder(),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite,
                      color: appThemeColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  child: Image.network(
                    event.image,
                    height: 300,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Column(
                  children: [
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 250),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 15, left: 15, top: 30, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.title,
                              style: const TextStyle(
                                  color: appAlternateColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                title: Text(
                                  DateFormat("dd MMMM yyyy")
                                      .format(event.dateTime),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                subtitle: Text(
                                  DateFormat("EEEE,  hh:mm a")
                                      .format(event.dateTime),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: const Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                title: Text(
                                  event.venue,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                subtitle: Text(
                                  event.location,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(OrganizerScreen());
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: const Icon(
                                    Icons.person,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  title: Text(
                                    event.organizer,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  subtitle: const Text(
                                    "Organizer",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "About Event",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              event.detail,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Direction",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Open Map",
                                  style: TextStyle(
                                      color: appThemeColor,
                                      fontSize: 15,
                                      decoration: TextDecoration.underline,
                                      decorationColor: appThemeColor,
                                      decorationStyle:
                                          TextDecorationStyle.solid),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://aroundodisha.com/wp-content/uploads/2021/02/google-map.png",
                                  fit: BoxFit.cover,
                                  width: Get.size.width,
                                  height: 200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Related Events",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Obx(
                            () => ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              primary: false,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: model.relatedEventList.length,
                              itemBuilder: (context, index) {
                                final banner = model.relatedEventList[index];
                                return EventListCard(
                                  banner,
                                  () {
                                    model.onEventClicked(banner);
                                  },
                                );
                              },
                            ),
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.to(const AllEventScreen());
                              },
                              child: Card(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: appThemeColor.withOpacity(.6),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 10),
                                  child: Text(
                                    "Show All",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Center(
                  child: Card(
                    margin: const EdgeInsets.only(top: 200),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    color: appAlternateColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601",
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${event.attendance}+ Going",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  letterSpacing: 1),
                            ),
                          ),
                          const Card(
                            color: appThemeColor,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8.0),
                              child: Text(
                                "Invite",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
