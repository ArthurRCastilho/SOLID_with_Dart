import '../view_models/user_view_model.dart';

class UserView {
  final UserViewModel viewModel;

  UserView(this.viewModel);

  void render() {
    print("=== Simulando a View ===");
    viewModel.addUser("João");
    viewModel.addUser("Maria");
  }
}
