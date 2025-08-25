import '../view_models/bird_view_model.dart';

class BirdView {
  void show() {
    final viewModel = BirdViewModel();
    viewModel.runExample();
  }
}
