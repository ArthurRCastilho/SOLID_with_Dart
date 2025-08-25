import '../services/user_service.dart';

class UserViewModel {
  final UserService service;

  UserViewModel(this.service);

  void addUser(String user) {
    service.registerUser(user);
  }
}
