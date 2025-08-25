import 'payment.dart';

class BoletoPayment implements Payment {
  @override
  void pay(double amount) => print("Pagamento de R\$$amount realizado via Boleto");
}
