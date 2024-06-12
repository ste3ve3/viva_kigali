enum CardType { debit, credit, mastercard, paypal }

class CardPayment {
  int id;
  String cardholder;
  String title;
  String cardNumber;
  String date;
  String cvv;
  CardType type;

  CardPayment(this.id, this.cardholder, this.title, this.cardNumber, this.date,
      this.cvv, this.type);
}
