import 'package:angular2/platform/browser.dart';
import 'package:dartblog/app_component.dart';
import 'package:http/browser_client.dart';
import 'package:angular2/core.dart';
//import 'package:dartblog/github_service.dart';
import 'package:dartblog/services/user_service.dart';
import 'package:angular2/router.dart';
import 'dart:html' as dom;
import 'package:auth0_lock/auth0_lock.dart';

BrowserClient newBrowserClient() => new BrowserClient();


void main(){
  bootstrap(
      AppComponent,
      const [
        const Provider(BrowserClient, useFactory: newBrowserClient, deps: const [])
      ],
        [UserService], [Router]
  );

  // check here if a user is logged in.


  var hash = dom.window.location.hash;
  print(hash);

  if(hash != null && hash != ""){
    //var parsedHash = lock.parseHash(hash);
  }


}

