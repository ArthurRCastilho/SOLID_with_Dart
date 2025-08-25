

import '../models/user.dart';
import '../repositories/user_repository.dart';
import '../services/user_services.dart';

class UserViewModel {
  final UserRepository _repository;
  final EmailService _emailService;

  UserViewModel(this._repository, this._emailService);

  void registerUser(String name, String email) {
    final user = User(name, email);

    _repository.save(user);
    _emailService.sendEmail(user);

    print("✅ Usuário registrado com sucesso!");
  }
}