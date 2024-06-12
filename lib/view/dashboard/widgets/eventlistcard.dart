import 'package:cnevent/model/event.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventListCard extends StatelessWidget {
  final Event event;

  final VoidCallback onPressed;

  const EventListCard(this.event,this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () => onPressed(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Row(
            children: [
              Image.network(
                width: 120,
                height: 120,
                event.image,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        event.title,
                        style: const TextStyle(color: appAlternateColor, fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const Icon(Icons.location_on,color: appThemeColor,size: 15,),
                                Text(
                                  maxLines: 1,
                                  event.location,
                                  style: const TextStyle(
                                      color: appThemeColor, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(Icons.timelapse,color: appAlternateColor,size: 15,),
                                Text(
                                  maxLines: 1,
                                  textAlign: TextAlign.end,
                                  DateFormat(" MMM dd, yyyy").format(event.dateTime),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
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
