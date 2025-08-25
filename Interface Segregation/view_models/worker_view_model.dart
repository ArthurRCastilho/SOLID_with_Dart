import '../models/human.dart';
import '../models/robot.dart';
import '../services/worker_service.dart';

class WorkerViewModel {
  final WorkerService _service = WorkerService();

  void execute() {
    final human = Human();
    final robot = Robot();

    _service.manageWork(human);
    _service.manageEat(human);

    _service.manageWork(robot);
    // robot não implementa eat(), logo não é passado para manageEat()
  }
}
