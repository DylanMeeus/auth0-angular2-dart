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

    @Input() List<Repository> repositories;

}