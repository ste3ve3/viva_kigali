import 'dart:math';

class Event {
  int id;
  DateTime dateTime;
  String title;
  String location;
  String venue;
  String organizer;
  String image;
  String detail;
  double price = 200;
  int attendance = Random().nextInt(5000);
  bool isFav;

  Event(this.id, this.dateTime, this.title, this.location, this.venue,
      this.organizer, this.detail, this.image, this.isFav);
}
