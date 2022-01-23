import 'MainMenu.dart';
import 'Router.dart';

void main() {
  String? choice = MainMenu.mainMenu();
  Router.route(choice);
}
