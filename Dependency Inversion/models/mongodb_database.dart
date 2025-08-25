import 'database.dart';

class MongoDBDatabase implements Database {
  @override
  void saveData(String data) => print("Salvando '$data' no MongoDB");
}
