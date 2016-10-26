import 'package:angular2/angular2.dart';
import 'package:angular2/core.dart';

@Component(
    selector: 'login',
    templateUrl: '../web/login.html'
)

class LoginComponent {

    String email;
    String password;

    // log the user in, just hardcoded user for now.
    login(){
        print("clicked me: " + email);

        if (email == "test@test.com" && password == "test123"){
            // logged in.
        }

    }

}