// Esse service recebe um Payment (abstração), sem precisar saber se é Pix, Cartão ou Boleto.

import '../models/payment.dart';

class PaymentService {
  final Payment _payment;

  PaymentService(this._payment);

  void processPayment(double amount) {
    _payment.pay(amount);
  }
}