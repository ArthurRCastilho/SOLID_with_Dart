import 'workable.dart';

class Robot implements Workable { // Apenas trabalha
  @override
  void work() {
    print("🤖 Robô está trabalhando...");
  }
}
