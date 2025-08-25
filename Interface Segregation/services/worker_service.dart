import '../models/workable.dart';
import '../models/eatable.dart';

class WorkerService {
  void manageWork(Workable worker) {
    worker.work();
  }

  void manageEat(Eatable eater) {
    eater.eat();
  }
}