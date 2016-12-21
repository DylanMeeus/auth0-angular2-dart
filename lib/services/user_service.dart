import 'package:angular2/core.dart';
import 'package:dartblog/repository_component.dart';
import 'package:dartblog/model/repository.dart';
import 'dart:async';
import 'package:dartblog/helpers/apihelper.dart';
import 'package:dartblog/model/user.dart';

/**
 * Service for user management
 * Deals with the logging in and logging out of users, as well as verifying if a user is logged in or not.
 */
@Injectable()
class UserService{

    User activeUser;

    UserService(){

    }

    logout(){
        this.activeUser = null; // just set the activeUser to null.
        return !isLoggedIn(); // in case something went wrong during logout, not really possible with our simple logout.
    }

    // Just an example of a login.
    bool login(String email, String password){
        if(email == "user@hotmail.com" && password == "test"){
            print("Logged in succesfully");
            User u = new User(email);
            this.activeUser = u;
        }
        return isLoggedIn();
    }

    bool isLoggedIn(){
        return this.activeUser != null;
    }
}