import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';

@Component(
    selector: 'github-component',
    templateUrl: '../web/githubrepository.html'
)

/**
 * Component with all github related information.
 * Renders a list of github repositories
 */
class RepositoryComponent{

  String name;
  String fullname;
  String owner;

  RepositoryComponent(String name, String fullname, String owner){
    this.name = name;
    this.fullname = fullname;
    this.owner = owner;
  }
}