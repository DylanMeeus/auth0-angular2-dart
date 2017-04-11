import 'package:angular2/angular2.dart';
import 'package:angular2/core.dart';
import 'package:dartblog/services/user_service.dart';
import 'package:angular2/router.dart';
import 'package:auth0_lock/auth0_lock.dart';


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

    var lock = new Auth0Lock('[secret]','[domain]');

    LoginComponent(this._userService, this._router){

    }


    void processLockAuthentication(data){
        print("processing lock");
        print(data);
        //this._router.navigate(["/" + route,{}]);
    }

    // log the user in, just hardcoded user for now.
    login(){
        /*bool loggedIn = this._userService.login(email,password);
        String route = loggedIn ? "Private" : "Public";
        this._router.navigate(["/" + route,{}]);*/
        lock.show(options: {'authParams': {'scope': 'openid profile'}});
    }


}