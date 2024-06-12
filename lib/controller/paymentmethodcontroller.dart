import 'package:cnevent/model/cardpayment.dart';
import 'package:cnevent/view/addcard/addcardscreen.dart';
import 'package:get/get.dart';

class PaymentMethodController extends GetxController {
  final cardList = [
    CardPayment(1, "Steve Ndicunguye", "Steve Debit Card",
        "0123 5485 6552 2552", "02/24", "522", CardType.debit),
    CardPayment(2, "Steve Ndicunguye", "Steve Credit Card",
        "8654 6546 5423 2323", "05/27", "522", CardType.credit),
    CardPayment(3, "Steve Ndicunguye", "Mastercard", "2132 4654 6522 3456",
        "09/27", "700", CardType.mastercard),
    CardPayment(4, "Steve Ndicunguye", "Paypal", "5645 6456 4652 3456", "02/23",
        "000", CardType.paypal),
  ].obs;

  void onAddNewCardClicked() {
    Get.to(const AddCardScreen());
  }
}
