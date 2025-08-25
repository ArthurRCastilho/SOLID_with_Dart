import '../models/user_repository.dart';

class UserService {
  final UserRepository repository;

  UserService(this.repository);

  void registerUser(String user) {
    repository.saveUser(user);
  }
}
