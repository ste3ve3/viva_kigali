import 'package:cnevent/model/event.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BannerCard extends StatelessWidget {
  double size = .85;
  final Event event;
  final VoidCallback onPressed;

  BannerCard(this.event, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => onPressed(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.network(
                event.image,
                fit: BoxFit.cover,
                width: Get.size.width * size,
                height: 250,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.black.withOpacity(.7),
                  width: Get.size.width * size,
                  height: 110,
                ),
              ),
              Container(
                width: Get.size.width * size,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Card(
                        elevation: 0,
                        color: appThemeColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            DateFormat("dd MMM, yyy").format(event.dateTime),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: (Get.size.width * size) - 40,
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        event.title,
                        maxLines: 2,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.timelapse,
                            color: Colors.white,
                            size: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              DateFormat("hh:mm a").format(event.dateTime),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              event.location,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 10,
                  bottom: 15,
                  child: Card(
                      shape: const CircleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          event.isFav ? Icons.favorite : Icons.favorite_border,
                          color: appThemeColor,
                          size: 30,
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
