import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'dart:convert';
import 'package:json_object/json_object.dart';
import 'github_component.dart';
import 'package:dartblog/public_component.dart';
import 'package:dartblog/private_component.dart';
import 'package:dartblog/login_component.dart';
import 'package:dartblog/helpers/apihelper.dart';
import 'package:dartblog/services/github_service.dart';
import 'package:dartblog/services/user_service.dart';
import 'package:dartblog/repository_component.dart';
import 'package:dartblog/model/repository.dart';
import 'package:angular2/router.dart';


@Component(
selector: 'my-app',
templateUrl: '../web/app_component.html',
directives: const [GithubComponent,ROUTER_DIRECTIVES],
providers: const [GithubService,ROUTER_PROVIDERS, UserService]
)



@RouteConfig(const[
  const Route(path: '/public', name: 'Public', component: PublicComponent),
  const Route(path: '/private', name: 'Private', component: PrivateComponent),
  const Route(path: '/login', name: 'Login', component: LoginComponent),
]
)


/**
 * This is the start of our application. Here we want to list the public repositories
 * These public repositories are the ones that are updated most recently and use javascript
 * We can also navigate to the login here, or go to the 'search' feature.
 * When navigating to the search feature, we will redirect to the login page if the user is not yet logged in.
 */
class AppComponent{

      String title = "Random github repositories";

      final UserService _userService;
      final Router _router;

  AppComponent(this._userService, this._router){
  }

  logout(){
      bool logoutSuccess = logout();
      if (logoutSuccess){
        this._router.navigate(['/Public',{}]);
      }
  }
}

