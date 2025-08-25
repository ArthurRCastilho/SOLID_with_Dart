import 'database.dart';

class UserRepository {
  final Database database;

  UserRepository(this.database);

  void saveUser(String user) {
    database.saveData(user);
  }
}
