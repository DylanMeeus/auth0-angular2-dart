import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'dart:convert';
import 'package:json_object/json_object.dart';
import 'github_component.dart';
import 'package:dartblog/helpers/apihelper.dart';
import 'package:dartblog/services/github_service.dart';
import 'package:dartblog/repository_component.dart';
import 'package:dartblog/model/repository.dart';
import 'package:angular2/router.dart';
import 'package:dartblog/services/user_service.dart';

@Component(
    selector: 'public-repolist',
    templateUrl: '../web/private.html',
    directives: const [GithubComponent,ROUTER_DIRECTIVES],
    providers: const [GithubService,ROUTER_PROVIDERS]
)


/**
 * This is the start of our application. Here we want to list the public repositories
 * These public repositories are the ones that are updated most recently and use javascript
 * We can also navigate to the login here, or go to the 'search' feature.
 * When navigating to the search feature, we will redirect to the login page if the user is not yet logged in.
 */
class PrivateComponent implements OnInit{

    String headerTitle = "Recently updated repositories";
    String language;

    final UserService _userService;
    final Router _router;

    final GithubService _githubService;

    List<Repositories> privateRepositories;

    PrivateComponent(this._userService, this._router, this._githubService){
        privateRepositories = this.getRepositories();
    }


    List<Repository> getRepositories() async {
        var repositories = await (_githubService.getRecentJavascriptRepositories());
        return repositories;
    }


    List<Repository> getRepositoryByLanguage(String language) async {
        var repositories = await (_githubService.getRepositoriesByLanguage(language));
        return repositories;
    }

    void ngOnInit(){

    }

    void search(){
        this.privateRepositories = getRepositoryByLanguage(language);
        this.headerTitle = "Recently updated " + language + " repositories.";
    }

}

