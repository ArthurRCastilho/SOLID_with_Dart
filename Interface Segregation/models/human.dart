import 'workable.dart';
import 'eatable.dart';

class Human implements Workable, Eatable { // Come e Trabalha
  @override
  void work() {
    print("👨 Humano está trabalhando...");
  }

  @override
  void eat() {
    print("👨 Humano está comendo...");
  }
}
