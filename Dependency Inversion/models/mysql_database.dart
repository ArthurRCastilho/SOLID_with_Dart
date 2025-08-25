import 'database.dart';

class MySQLDatabase implements Database {
  @override
  void saveData(String data) => print("Salvando '$data' no MySQL");
}
