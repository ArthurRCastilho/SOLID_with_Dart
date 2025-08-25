import 'payment.dart';

class PixPayment implements Payment {
  @override
  void pay(double amount) => print("Pagamento de R\$$amount realizado via Pix");
}