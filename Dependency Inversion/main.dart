import 'models/mysql_database.dart';
import 'models/mongodb_database.dart';
import 'models/user_repository.dart';
import 'services/user_service.dart';
import 'view_models/user_view_model.dart';
import 'views/user_view.dart';

void main() {
  // Podemos trocar facilmente a implementação do Database sem mudar nada no restante do código
  var mysqlRepo = UserRepository(MySQLDatabase());
  var mongoRepo = UserRepository(MongoDBDatabase());

  // Usando MySQL
  var mysqlService = UserService(mysqlRepo);
  var mysqlViewModel = UserViewModel(mysqlService);
  var mysqlView = UserView(mysqlViewModel);
  mysqlView.render();

  print("\n------------------\n");

  // Usando MongoDB
  var mongoService = UserService(mongoRepo);
  var mongoViewModel = UserViewModel(mongoService);
  var mongoView = UserView(mongoViewModel);
  mongoView.render();
}
