import 'package:angular2/core.dart';

@Component(
selector: 'my-app',
templateUrl: '../web/app_component.html'
)

/**
 * This is the start of our application. Here we want to list the public repositories
 * We can also navigate to the login here, or go to the 'search' feature.
 * When navigating to the search feature, we will redirect to the login page if the user is not yet logged in.
 */
class AppComponent{

  String title = "Angular2/Dart demo";


}