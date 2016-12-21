import 'package:angular2/angular2.dart';
import 'package:angular2/core.dart';
import 'package:dartblog/services/user_service.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'login',
    templateUrl: '../web/login.html',
    directives: const [RouterOutlet, RouterLink]
)

class LoginComponent {

    String email;
    String password;

    final UserService _userService;

    final Router _router;

    LoginComponent(this._userService, this._router){

    }


    // log the user in, just hardcoded user for now.
    login(){
        bool loggedIn = this._userService.login(email,password);
        String route = loggedIn ? "Private" : "Public";
        this._router.navigate(["/" + route,{}]);
    }

}