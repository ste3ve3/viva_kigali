import 'package:cnevent/model/event.dart';
import 'package:cnevent/model/notification.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationListCard extends StatelessWidget {
  final NotificationModel event;

  final VoidCallback onPressed;

  const NotificationListCard(this.event,this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        overflow: TextOverflow.fade,
                        event.title,
                        style: const TextStyle(color: appThemeColor, fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        overflow: TextOverflow.fade,
                        event.desc,
                        style: const TextStyle(color: appAlternateColor, fontSize: 12,fontWeight: FontWeight.normal),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            maxLines: 1,
                            textAlign: TextAlign.end,
                            DateFormat(" MMM dd, yyyy").format(event.date),
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
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
