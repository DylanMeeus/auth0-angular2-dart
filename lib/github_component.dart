import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:dartblog/repository_component.dart';
import 'package:dartblog/services/github_service.dart';
import 'package:dartblog/model/repository.dart';
import 'package:angular2/angular2.dart';
import 'dart:async';

@Component(
    selector: 'github-component',
    templateUrl: '../web/githubcomponent.html',
    providers: const [GithubService]
)

/**
 * Component with all github related information.
 * Renders a list of github repositories
 */
class GithubComponent{
  // We probably need to pass this class some repo components?
  // so it holds a set of them

    Future<List<Repository>> repoList; // this should be an observable.

    final GithubService _githubService;

    GithubComponent(this._githubService){
        this.getRepositories();
    }

    // this should depend on the page where the request is made.
    Future<Null> getRepositories() async {
        print("Getting the recent javascript components");
        var x = await (_githubService.getRecentJavascriptRepositories());
        print("Got the javascript components hopefully");
        print(x);
        this.repoList = x;
    }

}