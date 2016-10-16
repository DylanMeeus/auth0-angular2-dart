import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:dartblog/repository_component.dart';
import 'package:dartblog/services/github_service.dart';

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

  List<RepositoryComponent> repoList;

  final GithubService _githubService;

  GithubComponent(this._githubService){
    repoList = this._githubService.getRepositories();
  }


}