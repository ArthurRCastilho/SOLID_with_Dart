import 'flying_bird.dart';

class Sparrow extends FlyingBird {
  @override
  void eat() {
    print("🐦 Pardal está comendo sementes.");
  }

  @override
  void fly() {
    print("🐦 Pardal está voando!");
  }
}
