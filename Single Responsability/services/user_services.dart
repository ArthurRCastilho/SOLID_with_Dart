import '../models/user.dart';

class EmailService {
  void sendEmail(User user) {
    print("Enviando e-mail para ${user.email}");
  }
}