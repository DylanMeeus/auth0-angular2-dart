import 'package:angular2/platform/browser.dart';
import 'package:dartblog/app_component.dart';
import 'package:http/browser_client.dart';
import 'package:angular2/core.dart';
//import 'package:dartblog/github_service.dart';
import 'package:dartblog/services/user_service.dart';
import 'package:angular2/router.dart';

BrowserClient newBrowserClient() => new BrowserClient();

void main(){
  bootstrap(
      AppComponent,
      const [
        const Provider(BrowserClient, useFactory: newBrowserClient, deps: const [])
      ],
        [UserService], [Router]
  );
}