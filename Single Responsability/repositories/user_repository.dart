import '../models/user.dart';

class UserRepository {
  void save(User user) {
    print("Salvando usuário ${user.name} no banco de dados...");
  }
}