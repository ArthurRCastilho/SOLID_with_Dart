import '../view_models/worker_view_model.dart';

class WorkerView {
  final WorkerViewModel _viewModel = WorkerViewModel();

  void render() {
    print("=== Demonstração do ISP ===");
    _viewModel.execute();
  }
}