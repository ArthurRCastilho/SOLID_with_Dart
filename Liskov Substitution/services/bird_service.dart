import '../models/bird.dart';
import '../models/flying_bird.dart';

class BirdService {
  void feedBird(Bird bird) {
    bird.eat();
  }

  void makeItFly(FlyingBird bird) {
    bird.fly();
  }
}
