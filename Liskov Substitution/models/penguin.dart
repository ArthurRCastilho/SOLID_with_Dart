import 'bird.dart';

class Penguin extends Bird {
  @override
  void eat() {
    print("🐧 Pinguim está comendo peixes.");
  }

  void swim() {
    print("🐧 Pinguim está nadando!");
  }
}