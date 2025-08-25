import '../models/sparrow.dart';
import '../models/penguin.dart';
import '../services/bird_service.dart';
// import '../models/flying_bird.dart';

class BirdViewModel {
  final BirdService _birdService = BirdService();

  void runExample() {
    final sparrow = Sparrow();
    final penguin = Penguin();

    _birdService.feedBird(sparrow);
    _birdService.feedBird(penguin);

    // Pássaro voador
    _birdService.makeItFly(sparrow);

    // Se tentássemos passar penguin aqui daria erro de compilação
    // _birdService.makeItFly(penguin);
    penguin.swim();
  }
}
