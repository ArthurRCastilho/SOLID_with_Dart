import '../models/payment.dart';
import '../services/payment_service.dart';

class PaymentViewModel {
  late PaymentService _paymentService;

  void setPaymentMethod(Payment payment) {
    _paymentService = PaymentService(payment);
  }

  void pay(double amount) {
    _paymentService.processPayment(amount);
    print("✅ Pagamento processado com sucesso!");
  }
}