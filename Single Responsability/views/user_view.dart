import 'dart:io';
import '../repositories/user_repository.dart';
import '../services/user_services.dart';
import '../view_models/user_view_model.dart';

class UserView {
  void show() {
    final repository = UserRepository();
    final emailService = EmailService();
    final viewModel = UserViewModel(repository, emailService);

    stdout.write("Digite o nome do usuário: ");
    final name = stdin.readLineSync() ?? "";

    stdout.write("Digite o e-mail do usuário: ");
    final email = stdin.readLineSync() ?? "";

    viewModel.registerUser(name, email);
  }
}
