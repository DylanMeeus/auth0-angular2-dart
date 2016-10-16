import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'dart:convert';
import 'package:json_object/json_object.dart';
import 'github_component.dart';
import 'package:dartblog/helpers/apiparser.dart';
import 'package:dartblog/services/github_service.dart';
import 'package:dartblog/repository_component.dart';

@Component(
selector: 'my-app',
templateUrl: '../web/app_component.html',
directives: const [GithubComponent],
providers: const [GithubService]
)

/**
 * This is the start of our application. Here we want to list the public repositories
 * These public repositories are the ones that are updated most recently and use javascript
 * We can also navigate to the login here, or go to the 'search' feature.
 * When navigating to the search feature, we will redirect to the login page if the user is not yet logged in.
 */
class AppComponent{

  String title = "Random github repositories";

  BrowserClient browserClient;

  final GithubService _githubService;

  AppComponent(BrowserClient browserClient, this._githubService){
    print("running the app component"); // this is like console.log when running in the browser
    fetchGithubRepositories();
    this.browserClient = browserClient;
  }

  void fetchGithubRepositories() async{
    print("fetching github repositories");
    String path = "https://api.github.com/search/repositories?q=language:javascript&sort=updated";
    //var browserClient = injector.get(BrowserClient); // use dependency injection
    print("creating a request");

    var response = await browserClient.get(path);
    //print('Reponse status:  ${response.statusCode}');
    //print('Response body: ${response.body}');

    // parse the response

    JsonObject data = new JsonObject.fromJsonString(response.body);

    data.items.forEach((i) => print(i.name));

    print("calling response body");

    Apiparser parser = new Apiparser();
    print("parser created");
    //GithubComponent gc = parser.parseToComponent(response.body);
    print(parser.parseToComponent(response.body));

    this._githubService.addComponents(new RepositoryComponent("Ana","test","test","test"));
  }


}

