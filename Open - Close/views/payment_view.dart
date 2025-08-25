import 'dart:io';
import '../models/boleto_payment.dart';
import '../models/card_payment.dart';
import '../models/payment.dart';
import '../models/pix_payment.dart';
import '../view_models/payment_view_model.dart';

class PaymentView {
  void show() {
    final viewModel = PaymentViewModel();

    print("Escolha o método de pagamento:");
    print("1 - Pix");
    print("2 - Cartão");
    print("3 - Boleto");
    stdout.write("Opção: ");
    final option = stdin.readLineSync();

    Payment? payment;
    switch (option) {
      case "1":
        payment = PixPayment();
        break;
      case "2":
        payment = CardPayment();
        break;
      case "3":
        payment = BoletoPayment();
        break;
      default:
        print("❌ Opção inválida");
        return;
    }

    viewModel.setPaymentMethod(payment);

    stdout.write("Digite o valor do pagamento: ");
    final valueInput = stdin.readLineSync();
    final value = double.tryParse(valueInput ?? "0") ?? 0;

    viewModel.pay(value);
  }
}
