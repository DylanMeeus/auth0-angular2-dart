import 'package:angular2/core.dart';
import 'package:dartblog/repository_component.dart';
import 'package:dartblog/model/repository.dart';
import 'dart:async';
import 'package:dartblog/helpers/apihelper.dart';

/**
 * Service for the github panels.
 * Contains information related to github throughout our application.
 */
@Injectable()
class GithubService{

    Future<List<Repository>> repositories;

    GithubService(){

    }

    Future<List<Repository>> getRepositories()  {
        return this.repositories;
    }

    List<Repository> getRepositoriesByLanguage(String language) async {
        ApiHelper helper = new ApiHelper();
        return await helper.getRepositoriesByLanguage(language);
    }

    List<Repository> getRecentJavascriptRepositories() async {
        ApiHelper helper = new ApiHelper();
        return await helper.getRecentJavascriptRepositories();
    }

    // Adds new components to the list
    void addComponents(List<Repository> newComponents){
        repositories.addAll(newComponents);
        print("added components");
    }

    // Adds new components to the list
    void addComponent(Repository newComponents){
        repositories.add(newComponents);
        this.repositories = repositories.toList();
        print("added component");
    }
}