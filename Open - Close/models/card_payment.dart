import 'payment.dart';

class CardPayment implements Payment {
  @override
  void pay(double amount) => print("Pagamento de R\$$amount realizado via Cartão");
}