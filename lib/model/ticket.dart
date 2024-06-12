class Ticket {
  int id;
  String ticketHolder;
  String title;
  String venue;
  DateTime date;
  String type;
  String barcode;
  double price;
  int pax;
  String featureImage;

  Ticket(this.id, this.ticketHolder, this.title, this.venue, this.date,
      this.type, this.barcode, this.price, this.pax, this.featureImage);
}
